<?php

include_once("cabecalho.php");

?>

<style>
  .container{
    box-shadow: 0 2px 40px rgba(0, 0, 0, 0.9);
    margin-top: 280px
  }
</style>

<body>
  <div class="container">
    <h2>Login Biblioteca</h2>
    <form action="login.php" method="POST">
      <div class="form-group" style="width: 275px;">
        <label>Usuário:</label>
        <input type="text" id="usuario" name="usuario" required placeholder = "Digite o Usuario">
      </div>
      <div class="form-group" style="width: 275px;">
        <label>Senha:</label>
        <input type="password" id="senha" name="senha" required placeholder = "Digite a Senha">
      </div>
      <div class="form-group">
        <button type="submit" name="submit" id="submit">Login</button>
      </div>
    </form>
  </div>
</body>
</html>
