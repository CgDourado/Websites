<?php

include_once("conexao.php");
include_once("cabecalho.php");
include_once("verifica_usuario_logado.php");
// vcs não chamaram o arquivo de validação 
include_once("navbar.php");

?>



<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
</head>
<style>
    .container{
        box-shadow: 0 2px 40px rgba(0, 0, 0, 0.9);
    }
</style>
<body>
    <div class="container">
        <table id="example" class="table table-striped" style="width:100%">
          <tr>
              <th>Nome do aluno</th>
              <th>Nome do livro</th>
              <th>Nome do autor</th>
              <th>Data de emprestimo</th>
              <th>Data de devolução</th>

          </tr>
          <?php
              require_once('conexao.php');

              $conn = $_SESSION["conexao"];

              $sql ="SELECT * FROM EMPRESTIMO_LIVRO EMPL
              JOIN ALUNO AL ON EMPL.IDALUNO = AL.IDALUNO
              JOIN EXEMPLAR_LIVRO EXL ON EMPL.IDEXEMPLAR_LIVRO = EXL.IDEXEMPLAR_LIVRO
              JOIN LIVRO L ON EXL.IDLIVRO = L.IDLIVRO
              JOIN AUTOR_LIVRO AUTL ON L.IDLIVRO = AUTL.LIVRO_IDLIVRO
              JOIN AUTOR AUT ON AUTL.AUTOR_IDAUTOR = AUT.IDAUTOR
              GROUP BY (EMPL.IDEMPRESTIMO_LIVRO)";


              $query = mysqli_query($conn, $sql);
              while  ($result = mysqli_fetch_assoc($query)){
                  echo'
                  <tr>
                      <td>'.$result['nome_aluno'].'</td>
                      <td>'.$result['nome_livro'].'</td>
                      <td>'.$result['nome_autor'].'</td>
                      <td>'.$result['data_emprestimo'].'</td>
                      <td>'.$result['data_devolucao'].'</td>
                  </tr>';   
              }
          ?>
          </div>
        </table>
    </div>
</body>
</html>