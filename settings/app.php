<?php

date_default_timezone_set('Asia/Jakarta');

$root = "http://localhost:5000/";
if(isset($_SERVER['HTTP_HOST'])){
    $root=(isset($_SERVER['HTTPS']) ? "https://" : "http://").$_SERVER['HTTP_HOST'];
    $root.= str_replace(basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']);
}

define('ENVIRONMENT', isset($_SERVER['CI_ENV']) ? $_SERVER['CI_ENV'] : 'development');
// Core Application
define("DEMO",false);
define("APP_NAME","Aphot");
define("APP_AUTHOR","SI KOPLAK");
define("APP_DEBUG",TRUE);
define("APP_DEMO",FALSE);
define("APP_KEY","045otkggkn4r48jr8f854j58r284u348ru");
define('APP_URL', $root);
// Database
define("DB_HOST","localhost");
define("DB_USERNAME","root");
define("DB_PASSWORD","");
define("DB_NAME","hoteria");
// Email
define("MAIL_DRIVER","smtp");
define("MAIL_HOST","ssl://smtp.gmail.com");
define("MAIL_PORT","465");
define("MAIL_USERNAME", "email.kamu@isi.com");
define("MAIL_PASSWORD", "password.email.kamu");
define("MAIL_ENCRYPTION","tls");