<?php
declare(stric_types=1);

namespace App\Controller;

class ErrorController extends AbstractController
{
    public function notFoundAction ():void
    {
        parent::render('error/notFound');
    }
}