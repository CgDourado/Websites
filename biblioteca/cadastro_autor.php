<?php

  include_once("conexao.php");
  include_once("cabecalho.php");

  if(isset($_POST['submit']))
  {
    $nome_autor = $_POST['nome_autor'];

    $sql = "SELECT * FROM autor WHERE nome_autor = '$nome_autor'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      ?>
      <script>
        var msg = "Autor Ja existente!";
        alert(msg);
        window.location.href = "autor_html.php";
      </script>
      <?php 
    } else {
      $result = mysqli_query($conn, "INSERT INTO autor(nome_autor) VALUES ('$nome_autor')");
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