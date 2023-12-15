<?php

  include_once("conexao.php");
  include_once("cabecalho.php");

  if(isset($_POST["submit"]))
  {

    $ideditora = $_POST['ideditora'];
    $nome_editora = $_POST['nome_editora'];

    $result = mysqli_query($conn, "UPDATE editora SET nome_editora='$nome_editora' WHERE ideditora='$ideditora'");

    ?>
    <script>
      var msg = "Editado com Sucesso!";
      alert(msg);
      window.location.href = "edicao.php";
    </script>
    <?php 
  }
?>