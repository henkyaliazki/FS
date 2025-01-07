<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'InventoryController::index');
$routes->get('/add', 'InventoryController::add');
$routes->post('/add', 'InventoryController::add');
$routes->get('/edit/(:num)', 'InventoryController::edit/$1');
$routes->post('/edit/(:num)', 'InventoryController::edit/$1');
$routes->get('/delete/(:num)', 'InventoryController::delete/$1');


