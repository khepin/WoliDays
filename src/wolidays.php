<?php
use Symfony\Component\BrowserKit\Response;

require_once __DIR__.'/../vendor/Silex/autoload.php';

$app = new Silex\Application();

/**
 * Bootstrapping
 */
$app->register(new Silex\Extension\TwigExtension(), array(
    'twig.path' => __DIR__.'/templates',
    'twig.class_path' => __DIR__.'/../vendor/Silex/vendor/twig/lib',
));
$app['db.options'] = array(
    'dbname' => 'wolidays',
    'user' => 'root',
);
$app->register(new Silex\Extension\DoctrineExtension(), array(
    'db.dbal.class_path' => __DIR__.'/../vendor/Doctrine/lib',
    'db.common.class_path' => __DIR__.'/../vendor/Doctrine/lib/vendor/doctrine-common/lib',
));

/**
 * App definition
 */
$app->get('/', function() use($app) {
    return $app['twig']->render('index.html.twig');
});

$app->get('/is_holiday/{channel}/{date}', function($channel, $date) use($app){
    $query = 'select * from day where channel = ? and date = ?';
    $result = $app['db']->fetchArray($query, array($channel, $date));
    return $result[3];
});

$app->get('/work_days_between/{channel}/{start}/{end}', function($channel, $start, $end) use($app){
    //Check how many standard days
    $start_date = new DateTime($start);
    $end_date = new DateTime($end);
    $diff_days = $start_date->diff($end_date, true)->days;
    
    //Get number of holidays in the interval
    $query = 'select count(*) from day where channel = ? and date > ? and date < ?';
    $result = $app['db']->fetchArray($query, array($channel, $start, $end));
    $holidays = $result[0];
    $worked = $diff_days - $holidays;
    
    return $worked;
});

$app->get('/add_work_days/{channel}/{start}/{add_days}', function($channel, $start, $add_days) use($app){
    $start_date = new DateTime($start);
    $potential_end = new DateTime($start);
    $potential_end->add(new DateInterval('P'.$add_days.'D'));
    while(getWorkedDays($app, $channel, $start_date, $potential_end) != $add_days){
        $potential_end->add(new DateInterval ('P1D'));
    }
    
    return $potential_end->format('Y-m-d');
});

function getWorkedDays($app, $channel, $start, $end){
    //Check how many standard days
    $diff_days = $start->diff($end, true)->days;
    
    //Get number of holidays in the interval
    $query = 'select count(*) from day where channel = ? and date > ? and date < ?';
    $result = $app['db']->fetchArray($query, array($channel, $start->format('Y-m-d'), $end->format('Y-m-d')));
    $holidays = $result[0];
    $worked = $diff_days - $holidays;
    
    return $worked;
}

return $app;