<?php 

require_once("verifica_sessao.php");

if (!isset($_SESSION["usuario_logado"])) 
{
    header("Location: http://localhost/biblioteca/index.php");
    // arrumem esse redirecionamento
}