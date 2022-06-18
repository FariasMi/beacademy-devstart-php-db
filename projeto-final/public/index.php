<?php


ini_set('display_errors',1);

include '../vendor/autoload.php';

/* $database = 'db_store';
$username = 'fariasmi';
$password = 'password';



$connection = new PDO('mysql:host=localhost;dbname='.$database,$username,$password);
var_dump($connection);
 */

/* $query = 'SELECT * FROM tb_category';

$preparacao = $connection->prepare($query);
$preparacao->execute();

while($registro = $preparacao -> fetch()){
    var_dump($registro);
}
 
 */



$url = explode('?',$_SERVER['REQUEST_URI'])[0];


$routes = include '../config/routes.php';


if(false === isset($routes[$url])){        
    (new ErrorController)->notFoundAction();

    exit;
}

$controllerName = $routes[$url]['controller'];
$methodName = $routes[$url]['method'];

(new $controllerName())->$methodName();
