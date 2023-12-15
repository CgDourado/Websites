<?php

  include_once("conexao.php");
  include_once("cabecalho.php");

  if(isset($_POST['submit']))
  {
    $idaluno = $_POST['idaluno'];
    $idexemplar = $_POST['idexemplar_livro'];
    $data_emprestimo = $_POST['data_emprestimo'];
    $data_devolucao = $_POST['data_devolucao'];
    $dataAtual = date("Y-m-d");

    $sql = "SELECT * FROM emprestimo_livro WHERE idexemplar_livro = '$idexemplar'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      ?>
      <script>
        var msg = "Exemplar Ja existente!";
        alert(msg);
        window.location.href = "emprestimo_html.php";
      </script>
      <?php 
      
    } else {
      
      if ($data_emprestimo < $dataAtual) {
        ?>
        <script>
          var msg = "Selecione uma data correta!";
          alert(msg);
          window.location.href = "emprestimo_html.php";
        </script>
        <?php 
      } 
      
      else if ($data_devolucao < $data_emprestimo) {
        ?>
        <script>
          var msg = "Selecione uma data correta!";
          alert(msg);
          window.location.href = "emprestimo_html.php";
        </script>
        <?php 
      }
  
      else{
        $result = mysqli_query($conn, "INSERT INTO emprestimo_livro(idaluno, idexemplar_livro, data_emprestimo, data_devolucao) VALUES ('{$idaluno}','{$idexemplar}','{$data_emprestimo}','{$data_devolucao}')");
  
        ?>
        <script>
          var msg = "Emprestado com Sucesso!";
          alert(msg);
          window.location.href = "menu.php";
        </script>
        <?php 
      }

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