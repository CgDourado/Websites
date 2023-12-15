<?php

include_once("cabecalho.php");
include_once("verifica_usuario_logado.php");
// vcs não chamaram o arquivo de validação 
include_once("navbar.php");

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Biblioteca</title>
  <style>

    body {
      font-family: Arial, sans-serif;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center center
    }

    .container {
      width: 35%;
      margin: auto auto;
      margin-top: 10px;
      margin-top: 165px;
      background-color: #fff;
      border-radius: 10px;
      padding: 15px;
      text-align: center;
      box-shadow: 0 2px 40px rgba(0, 0, 0, 0.9);
    }

    h1 {
      text-align: center;
    }

    h2 {
      text-align: center;
      height: 90px;
    }

    h3 {
      text-align: center;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Cadastro</h1><br>
    <div class="container1">
      <a role="button" class="btn btn-dark" style='width: 180px' href="editora_html.php">Cadastro Editora</a><br><br>
      <a role="button" class="btn btn-dark" style="width: 180px" href="autor_html.php">Cadastro Autor</a><br><br>
      <a role="button" class="btn btn-dark" style="width: 180px" href="livro_html.php">Cadastro Livro</a><br><br>
      <a role="button" class="btn btn-dark" style="width: 180px" href="exemplar_html.php">Cadastro Exemplar</a><br><br>
      <a role="button" class="btn btn-dark" style="width: 180px" href="aluno_html.php">Cadastro Aluno</a><br><br>
    </div>
    <hr>
    <a role="button" class="btn btn-danger" style="float: left" href="menu.php">⇦ Voltar</a><br><br>
  </div>
</body>
</html>