<?php

include_once("cabecalho.php");
include_once("verifica_usuario_logado.php");
// vcs não chamaram o arquivo de validação 
include_once("navbar.php");

?>

<?php 

$url_absoluta = "http://localhost/biblioteca/";

$url = $_SERVER['REQUEST_URI'];

$explode_url = explode("/", $url);

$segmento = 3;

?>

<!DOCTYPE html>
<html>
<head>
  <title>Biblioteca Online</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
    }
    
    .container {
      max-width: 800px;
      width: 40%;
      margin: 0 auto;
      margin-top: 280px;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    
    h1 {
      font-family: Times New Roman, sans-serif;
      text-align: center;
      color: #333;
    }
    
    .welcome-message {
      text-align: center;
      margin-top: 30px;
      font-size: 20px;
      color: #666;
    }
    
    .button {
      display: inline-block;
      background-color: #4CAF50;
      color: #fff;
      padding: 10px 20px;
      text-decoration: none;
      border-radius: 5px;
      transition: background-color 0.3s;
    }
    
    .button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Bem-vindo à Biblioteca Online</h1>
    <div class="welcome-message">
      <p>Bem-vindo ao nosso site de administração de biblioteca, a ferramenta perfeita para simplificar e aprimorar a gestão do seu acervo de livros.</p>
      <p>Com nossa plataforma intuitiva e abrangente, você terá total controle sobre todas as atividades relacionadas à sua biblioteca.</p>
    </div><br><hr><br>
    <div style="text-align: center;">
      <a button type="button" class="btn btn-dark" href="cadastro.php" >Cadastro</button></a>
      <a button type="button" class="btn btn-dark" href="edicao.php">Edição</button></a>
      <a button type="button" class="btn btn-dark" href="emprestimo_html.php">Emprestimo</button></a>
      <a button type="button" class="btn btn-dark" href="listagem.php">Listagem</button></a>
    </div>
  </div>
</body>
</html>