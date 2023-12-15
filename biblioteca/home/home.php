<?php 

require_once("../verifica_sessao.php");
require_once("../verifica_usuario_logado.php");
require_once("../menu.php");

echo "Bem vindo! ".$_SESSION["usuario_logado"];
?>