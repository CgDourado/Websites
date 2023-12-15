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
      margin-top: 160px;
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
    <h2>Cadastro Livro</h2>
    <form action="cadastro_livro.php" method="POST">
      <div class="form-group">
        <label>Nome do Livro:</label>
        <input type="text" id="nome_livro" name="nome_livro" required style="width: 260px;">
        <label>Ano do Livro:</label>
        <input type="text" id="ano_publicacao" name="ano_publicacao" required style="width: 260px;">
        <br><br>

        <div class="mb-3">
        <label for="disabledSelect" class="form-label">Editora</label>
        <select name="ideditora" id="ideditora" class="form-select">
        <option>Selecione a Editora</option>
					<?php
						$result_editora = "SELECT * FROM editora";
						$resultado_editora = mysqli_query($conn, $result_editora);
						while($row_editora = mysqli_fetch_assoc($resultado_editora)){ ?>
							<option value="<?php echo $row_editora['ideditora']; ?>"><?php echo $row_editora['nome_editora']; ?>
              </option> 
              <?php
						}
					?>
          <option>...</option>
        </select>
        </div>

        <div class="mb-3">
        <label for="disabledSelect" class="form-label">Autor</label>
        <select name="idautor" id="idautor" class="form-select">
          <option>Selecione o Autor</option>
            <?php
              $result_autor = "SELECT * FROM autor";
              $resultado_autor = mysqli_query($conn, $result_autor);
              while($row_autor = mysqli_fetch_assoc($resultado_autor)){ ?>
                <option value="<?php echo $row_autor['idautor']; ?>"><?php echo $row_autor['nome_autor']; ?>
                </option> 
                <?php
              }
            ?>
          <option>...</option>
        </select>
        </div>

        <div class="form-group">
        <button type="submit" name="submit" id="submit">Cadastrar</button>
        </div>
        <hr>
        <a role="button" class="btn btn-danger" href="cadastro.php"> ⇦ Voltar</a>
      </div>
    </form>
  </div>
</body>
</html>