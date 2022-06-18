<?php


namespace App\Connection;

abstract class Connection
{
    public static function getConnection(): \PDO
    {
        $database = 'db_store';
        $username = 'fariasmi';
        $password = 'password';

        return new PDO('mysql:host=localhost;dbname='.$database,$username,$password);

    }

}