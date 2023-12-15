<?php

include_once("cabecalho.php");
include_once("navbar.php");
include_once("verifica_usuario_logado.php");
include_once("conexao.php");
// vcs não chamaram o arquivo de validação 

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
      width: 300px;
      margin: 0 auto;
      margin-top: 165px;
      background-color: #fff;
      border-radius: 5px;
      padding: 20px;
      box-shadow: 0 2px 40px rgba(0, 0, 0, 0.9);
    }
    
    h2 {
      text-align: center;
    }

    .form-group {
      margin-bottom: 1px;
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
  </style>
</head>
<body>
  <div class="container">
    <h2>Cadastro Exemplar</h2><br>
    <form action="cadastro_exemplar.php" method="POST">
      <div class="form-group">
      <label>Numero do Exemplar:</label>
      <input type="text" id="numero_exemplar" name="numero_exemplar" required style="width: 260px;">
      <br><br>

      <div class="mb-3">
        <label for="disabledSelect" class="form-label">Exemplar</label>
        <select name="idlivro" id="idlivro" class="form-select">
          <option>Selecione o Exemplar</option>
            <?php
              $result_livro = "SELECT * FROM livro";
              $resultado_livro = mysqli_query($conn, $result_livro);
              while($row_livro = mysqli_fetch_assoc($resultado_livro)){ ?>
                <option value="<?php echo $row_livro['idlivro']; ?>"><?php echo $row_livro['nome_livro']; ?>
                </option> 
                <?php
              }
            ?>
          <option>...</option>
        </select>
      </div>

      <div>
       <button type="submit" name="submit" id="submit">Cadastrar</button>
      </div>
      <hr>
      <a role="button" class="btn btn-danger" href="cadastro.php"> ⇦ Voltar</a>
    </form>
  </div>
</body>
</html>