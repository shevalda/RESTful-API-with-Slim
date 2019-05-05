<?php
ini_set('display_errors', 1);

use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;

require_once 'vendor/autoload.php';


$settings =  [
    'settings' => [
        'displayErrorDetails' => true,
    ],
];

$app = new Slim\App($settings);
// $app = new \Slim\App;

require_once 'routes/get.php';
require_once 'routes/post.php';

$app->run();