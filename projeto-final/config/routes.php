<?php

use App\Controller\IndexController;
use App\Controller\CategoryController;
use App\Controller\ProductController;


//$url = explode('?',$_SERVER['REQUEST_URI'])[0];


function createRoute(string $controllerName,string $methodName){
    return[
        'controller' => $controllerName,
        'method' => $methodName,
    ];

}

$routes = [
    '/' => createRoute(IndexController::class,'indexAction'),
    '/produtos' => createRoute(ProductController::class,'listAction'),
    '/produtos/novo' => createRoute(ProductController::class,'addAction'),
    '/categorias'=>createRoute(CategoryController::class,'listAction'),

];

return $routes;