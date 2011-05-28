<?php

/**
 * Get the number of worked days between 2 dates.
 *
 * @param Silex\Application $app
 * @param string $channel
 * @param string $start
 * @param string $end
 * @return int
 */
function getWorkedDaysBetween($app, $channel, $start, $end){
    //Check how many standard days
    $diff_days = $start->diff($end, true)->days;
    
    //Get number of holidays in the interval
    $query = 'select count(*) from day where channel = ? and date > ? and date < ?';
    $result = $app['db']->fetchArray($query, array($channel, $start->format('Y-m-d'), $end->format('Y-m-d')));
    $holidays = $result[0];
    $worked = $diff_days - $holidays;
    
    return $worked;
}