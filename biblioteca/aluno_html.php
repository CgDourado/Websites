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
      background-color: #86ab71;
      
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

    .container2{
      margin-left: 42.2%
    }
  </style>
</head>
<body>
  <div class="container">
  <h2>Cadastro Alunos</h2><br>
    <form action="cadastro_aluno.php" method="POST">
      <div class="form-group">
        <label>Nome do aluno:</label>
        <input type="text" id="nome_aluno" name="nome_aluno" placeholder="Digite o nome do aluno" required style="width: 260px;">
      </div>
      <div class="form-group">
        <label>Ra:</label>
        <input type="text" id="ra" name="ra" placeholder="Digite o RA" required style="width: 260px;">
      </div>
      <div class="form-group">
        <label>CPF:</label>
        <input type="text" id="cpf" name="cpf" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" title="Digite um CPF no formato: xxx.xxx.xxx-xx" placeholder="___.___.___-__" style="width: 260px;">
      </div>
      <div class="form-group">
        <button type="submit" name="submit" id="submit" style="width: 260px;">Cadastrar</button>
      </div>
      <hr>
      <a role="button" class="btn btn-danger" href="cadastro.php"> ⇦ Voltar</a><br>
    </form>
  </div>
</body>
</html>
  <script>
    const cpfInput = document.getElementById('cpf');
  
    cpfInput.addEventListener('input', function (e) {
      let cpf = e.target.value;
      cpf = cpf.replace(/\D/g, '');
      cpf = cpf.slice(0, 11);
      cpf = cpf.replace(/(\d{3})(\d)/, '$1.$2');
      cpf = cpf.replace(/(\d{3})(\d)/, '$1.$2');
      cpf = cpf.replace(/(\d{3})(\d{1,2})$/, '$1-$2');
      e.target.value = cpf;
    });
  </script>
</body>
</html>