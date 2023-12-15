<?php

include_once("cabecalho.php");
include_once("verifica_usuario_logado.php");
// vcs não chamaram o arquivo de validação 
include_once("navbar.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>

    body {
      font-family: Arial, sans-serif;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center center
    }
    
    .container {
      width: 300px;
      margin: 0 auto;
      margin-top: 165px;
      background-color: #fff;
      border-radius: 5px;
      padding: 20px;
      box-shadow: 0 2px 40px rgba(0, 0, 0, 0.9);
    }
    
    h2 {
      text-align: center;
    }
    
    .form-group {
      margin-bottom: 15px;
    }
    
    .form-group label {
      display: block;
      margin-bottom: 5px;
    }
    
    .form-group input {
      width: 94%;
      padding: 7px;
      border-radius: 3px;
      border: 1px solid #ccc;
    }
    
    .form-group button {
      width: 100%;
      padding: 7px;
      border-radius: 3px;
      border: none;
      background-color: #e1a900;
      color: white;
      cursor: pointer;
    }
    
    .form-group button:hover {
      background-color: #030303;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Cadastro Editora</h2>
    <form action="cadastro_editora.php" method="POST">
      <div class="form-group" style="width: 275px;">
        <label>Nome da editora:</label>
        <input type="text" id="nome_editora" name="nome_editora" required>
      </div>
      <div class="form-group">
        <button type="submit" name="submit" id="submit">Cadastrar</button>
      </div>
      <hr>
      <a role="button" class="btn btn-danger" href="cadastro.php"> ⇦ Voltar</a><br>
    </form>
  </div>
</body>
</html>