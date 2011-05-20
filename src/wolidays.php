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
    'user' => 'woli_user',
    'password' => 'password',
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

$app->get('/is_working_day/{channel}/{date}', function($channel, $date) use($app){
    $query = 'select is_worked from day where channel = ? and date = ?';
    $result = $app['db']->fetchArray($query, array($channel, $date));
    $response = new Response($result[0], 200);
    return $response;
});

return $app;