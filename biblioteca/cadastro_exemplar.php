<?php

  include_once("conexao.php");
  include_once("cabecalho.php");

  if(isset($_POST['submit']))
  {
    $numero_exemplar = $_POST['numero_exemplar'];
    $idlivro = $_POST["idlivro"];

    $sql = "SELECT * FROM exemplar_livro WHERE numero_exemplar = '$numero_exemplar' AND idlivro ='$idlivro'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      ?>
      <script>
        var msg = "Exemplar Ja existente!";
        alert(msg);
        window.location.href = "exemplar_html.php";
      </script>
      <?php 
    } else {
      $result = mysqli_query($conn, "INSERT INTO exemplar_livro(idlivro, numero_exemplar) VALUES ('{$idlivro}','{$numero_exemplar}')");
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