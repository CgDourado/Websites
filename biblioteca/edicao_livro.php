<?php

  include_once("conexao.php");
  include_once("cabecalho.php");

  if(isset($_POST["submit"]))
  {

    $idlivro = $_POST['idlivro'];
    $nome_livro = $_POST['nome_livro'];
    $ano_publicacao = $_POST['ano_publicacao'];

    $result = mysqli_query($conn, "UPDATE livro SET nome_livro='$nome_livro', ano_publicacao='$ano_publicacao' WHERE idlivro='$idlivro'");

    ?>
    <script>
      var msg = "Editado com Sucesso!";
      alert(msg);
      window.location.href = "edicao.php";
    </script>
    <?php 
  }
?>