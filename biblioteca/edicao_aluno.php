<?php

  include_once("conexao.php");
  include_once("cabecalho.php");

  if(isset($_POST["submit"]))
  {

    $idaluno = $_POST['idaluno'];
    $nome_aluno = $_POST['nome_aluno'];
    $cpf =  $_POST['cpf'];
    $ra = $_POST['ra'];

    $result = mysqli_query($conn, "UPDATE aluno SET nome_aluno='$nome_aluno', cpf='$cpf', ra='$ra' WHERE idaluno='$idaluno'");

    ?>
    <script>
      var msg = "Editado com Sucesso!";
      alert(msg);
      window.location.href = "edicao.php";
    </script>
    <?php 
  }
?>