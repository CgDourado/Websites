<nav class="navbar bg-body-tertiary fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href = "menu.php">Biblioteca 📚</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" style="width: 13%;">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="menu.php">🏠 Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="cadastro.php">💾 Cadastro</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="edicao.php">📝 Edição</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="listagem.php">🗒️ Listagem</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="emprestimo_html.php">📖 Emprestimo</a>
          </li><br>
          <li class="nav-item">
            <a class="btn btn-outline-success me-2" aria-current="page" href="logout.php" text-align="right">Sair</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>