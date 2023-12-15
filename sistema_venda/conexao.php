<?php 

require_once("verifica_sessao.php");

$hostname = "localhost"; 
$database = "sistema_vendaead02";
$user = "root";
$password = "";

$conn = mysqli_connect($hostname, $user, $password, $database);

if (!$conn) 
{
    die(mysqli_error($conn));
}
else 
{
    $_SESSION["conexao"] = $conn;
}