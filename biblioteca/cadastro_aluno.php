<?php

  include_once('conexao.php');
  include_once("cabecalho.php");

  if(isset($_POST['submit']))
  {

    include_once('conexao.php');

    $nome_aluno = $_POST['nome_aluno'];
    $cpf =  $_POST['cpf'];
    $ra = $_POST['ra'];

    $sql = "SELECT * FROM aluno WHERE nome_aluno = '$nome_aluno' AND cpf = '$cpf' AND ra = '$ra'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      ?>
      <script>
        var msg = "Aluno Ja existente!";
        alert(msg);
        window.location.href = "aluno_html.php";
      </script>
      <?php 
    } else {
      $result = mysqli_query($conn, "INSERT INTO aluno(nome_aluno, cpf, ra) VALUES ('$nome_aluno','$cpf','$ra')");
      ?>
      <script>
        var msg = "Cadastrado com Sucesso!";
        alert(msg);
        window.location.href = "cadastro.php";
      </script>
      <?php 
    }
  }
  
?>