<?php

  include_once("conexao.php");
  include_once("cabecalho.php");

  if(isset($_POST["submit"]))
  {

    $conn = $_SESSION["conexao"];

    
    $idautor = $_POST["idautor"];
    $nome_livro = $_POST["nome_livro"];
    $ano_publicacao = $_POST["ano_publicacao"];
    $ideditora = $_POST["ideditora"];

    $sql = "SELECT * FROM livro WHERE ideditora = '$ideditora' AND nome_livro = '$nome_livro' AND ano_publicacao = '$ano_publicacao'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      ?>
      <script>
        var msg = "Livro Ja existente!";
        alert(msg);
        window.location.href = "livro_html.php";
      </script>
      <?php 
    } else {
      $result = mysqli_query($conn, "INSERT INTO livro (ideditora, nome_livro, ano_publicacao) VALUES ('{$ideditora}','{$nome_livro}','{$ano_publicacao}')");
      ?>
      <script>
        var msg = "Cadastrado com Sucesso!";
        alert(msg);
        window.location.href = "cadastro.php";
      </script>
      <?php 
    }

    $idlivro = mysqli_insert_id($conn);
    $result2 = mysqli_query($conn, "INSERT INTO autor_livro (livro_idlivro, autor_idautor) VALUES ('{$idlivro}','{$idautor}')");
  }
?>