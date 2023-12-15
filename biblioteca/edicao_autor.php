<?php

  include_once("conexao.php");
  include_once("cabecalho.php");

  if(isset($_POST["submit"]))
  {

    $idautor = $_POST['idautor'];
    $nome_autor = $_POST['nome_autor'];

    $result = mysqli_query($conn, "UPDATE autor SET nome_autor='$nome_autor' WHERE idautor='$idautor'");

    ?>
    <script>
      var msg = "Editado com Sucesso!";
      alert(msg);
      window.location.href = "edicao.php";
    </script>
    <?php 
  }
?>