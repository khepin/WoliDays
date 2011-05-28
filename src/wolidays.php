<?php
use Symfony\Component\BrowserKit\Response;

require_once __DIR__.'/../vendor/Silex/autoload.php';
require_once __DIR__.'/func.php';

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

/**
 * Index
 */
$app->get('/', function() use($app) {
    return $app['twig']->render('index.html.twig');
});

/**
 * Will tell if a given day is a holiday or not
 */
$app->get('/is_holiday/{channel}/{date}', function($channel, $date) use($app){
    $query = 'select * from day where channel = ? and date = ?';
    $result = $app['db']->fetchArray($query, array($channel, $date));
    // If we don't have the day in DB, it's considered a worked day
    if(!is_array($result))
    {
        return 0;
    }
    return $result[3];
});

/**
 * Returns the number of worked days between 2 dates
 */
$app->get('/work_days_between/{channel}/{start}/{end}', function($channel, $start, $end) use($app){
    $start_date = new DateTime($start);
    $end_date = new DateTime($end);
    
    return getWorkedDaysBetween($app, $channel, $start_date, $end_date);
});

/**
 * Returns the date of the day X working days after the given one
 */
$app->get('/add_work_days/{channel}/{start}/{add_days}', function($channel, $start, $add_days) use($app){
    $start_date = new DateTime($start);
    $potential_end = new DateTime($start);
    $potential_end->add(new DateInterval('P'.$add_days.'D'));
    while(getWorkedDaysBetween($app, $channel, $start_date, $potential_end) != $add_days){
        $potential_end->add(new DateInterval ('P1D'));
    }
    
    return $potential_end->format('Y-m-d');
});

return $app;