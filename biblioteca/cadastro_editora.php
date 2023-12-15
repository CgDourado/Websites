<?php

  include_once("conexao.php");
  include_once("cabecalho.php");

  if(isset($_POST['submit']))
  {
    $nome_editora = $_POST['nome_editora'];

    $sql = "SELECT * FROM editora WHERE nome_editora = '$nome_editora'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      ?>
      <script>
        var msg = "Editora Ja existente!";
        alert(msg);
        window.location.href = "editora_html.php";
      </script>
      <?php 
    } else {
      $result = mysqli_query($conn, "INSERT INTO editora(nome_editora) VALUES ('$nome_editora')");
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