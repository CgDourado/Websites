<?php

  include_once("conexao.php");
  include_once("cabecalho.php");

  if(isset($_POST["submit"]))
  {

    $idexemplar_livro = $_POST['idexemplar_livro'];
    $numero_exemplar = $_POST['numero_exemplar'];

    $result = mysqli_query($conn, "UPDATE exemplar_livro SET numero_exemplar='$numero_exemplar' WHERE idexemplar_livro='$idexemplar_livro'");

    ?>
    <script>
      var msg = "Editado com Sucesso!";
      alert(msg);
      window.location.href = "edicao.php";
    </script>
    <?php 
  }
?>