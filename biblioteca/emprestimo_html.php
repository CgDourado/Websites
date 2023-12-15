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
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>

    body {
      font-family: Arial, sans-serif;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center center
    }
    
    .container {
      width: 340px;
      margin: 0 auto;
      margin-top: 130px;
      background-color: #fff;
      border-radius: 5px;
      padding: 20px;
      box-shadow: 0 2px 40px rgba(0, 0, 0, 0.9);
    }
    
    h2 {
      text-align: center;
    }
    
    .form-group {
      margin-bottom: 15px;
    }
    
    .form-group label {
      display: block;
      margin-bottom: 5px;
    }
    
    .form-group input {
      width: 94%;
      padding: 7px;
      border-radius: 3px;
      border: 1px solid #ccc;
    }
    
    .form-group button {
      width: 100%;
      padding: 7px;
      border-radius: 3px;
      border: none;
      background-color: #e1a900;
      color: white;
      cursor: pointer;
    }
    
    .form-group button:hover {
      background-color: #030303;
    }

    .form-control{
      text-align: center;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Emprestimo e Devolução</h2>
    <form action="cadastro_emprestimo.php" method="POST">
      <div class="form-group">
      <br><br>
      <div class="mb-3">
      <label for="disabledSelect" class="form-label">Aluno</label>
      <select name="idaluno" id="idaluno" class="form-select">
        <option>Selecione o Aluno</option>
          <?php
            $result_aluno = "SELECT * FROM aluno";
            $resultado_aluno = mysqli_query($conn, $result_aluno);
              while($row_aluno = mysqli_fetch_assoc($resultado_aluno)){ ?>
                <option value="<?php echo $row_aluno['idaluno']; ?>"><?php echo $row_aluno['nome_aluno']; ?>
                </option>
                <?php
              }
          ?>
        <option>...</option>
      </select>
    </div>

      <div class="mb-3">
      <label for="disabledSelect" class="form-label">Exemplar</label>
      <select name="idexemplar_livro" id="idexemplar_livro" class="form-select">
        <option>Selecione o Exemplar</option>
          <?php
            $result_exemplar = "SELECT * FROM exemplar_livro";
            $resultado_exemplar = mysqli_query($conn, $result_exemplar);
              while($row_livro = mysqli_fetch_assoc($resultado_exemplar)){ ?>
                <option value="<?php echo $row_livro['idexemplar_livro']; ?>"><?php echo $row_livro['numero_exemplar']; ?>
                </option> 
                <?php
              }
          ?>
        <option>...</option>
      </select>
      </div>
      <div>
        <label>Emprestimo</label>
        <input type="date" id="data_emprestimo" name="data_emprestimo" required style="width: 300px;"><br><br>
        <label>Devolução</label>
        <input type="date" id="data_devolucao" name="data_devolucao" required style="width: 300px;">
      </div><br>
      <div class="form-group">
        <button type="submit" name="submit" id="submit">Cadastrar</button>
      </div>
      <hr>
      <a role="button" class="btn btn-danger" href="menu.php"> ⇦ Voltar</a>
    </form>
  </div>
</body>
</html>