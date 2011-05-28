<?php

require_once __DIR__.'/../vendor/Silex/autoload.php';

class WoliDaysTest extends \Silex\WebTestCase {
    public function createApplication() {
        return require __DIR__.'/../src/wolidays.php';
    }
    
    public function testIndex(){
        $client = $this->createClient();
        $crawler = $client->request('GET', '/');
        $this->assertTrue($crawler->filter('title:contains("Welcome to WoliDays")')->count() > 0);
    }
    
    public function testIsHoliday() {
        $client = $this->createClient();
        $client->request('GET', '/is_holiday/default/2011-02-01');
        $response = $client->getResponse();
        $this->assertTrue($response->getContent() === '0');
        $client->request('GET', '/is_holiday/default/2011-02-05');
        $response = $client->getResponse();
        $this->assertTrue($response->getContent() === '1');
    }
    
    public function testWorkdaysbetween(){
        $client = $this->createClient();
        $client->request('GET', '/work_days_between/default/2011-02-04/2011-09-03');
        $this->assertEquals($client->getResponse()->getContent(), '151');
    }
    
    public function testAddworkdays(){
        $client = $this->createClient();
        $client->request('GET', '/add_work_days/default/2011-02-04/151');
        $this->assertEquals($client->getResponse()->getContent(), '2011-09-03');
    }
}