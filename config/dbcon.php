<?php

define('DB_SERVER',"localhost");

//define('DB_SERVER',"127.0.0.1");
define('DB_USERNAME',"root");
//define('DB_USERNAME',"root@localhost");

define('DB_PASSWORD',"");
define('DB_DATABASE',"pos-system-php");

$conn = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

if(!$conn){
    die("Connection Failed: ". mysqli_connect_error());
}else{
    //echo 'Connection Established.';
}

?>