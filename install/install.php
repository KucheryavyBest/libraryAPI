<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once '../dbclass.php';
try 
{
    $dbclass = new DBClass(); 
    $connection = $dbclass->getConnection();
    $sql = file_get_contents("library.sql"); 
    $connection->exec($sql);
    echo "Database and tables created successfully!";
}
catch(PDOException $e)
{
    echo $e->getMessage();
}

?>	