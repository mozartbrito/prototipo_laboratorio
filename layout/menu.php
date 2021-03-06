<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top menu-superior">
    <div class="container-fluid">
      <div class="row row-menu-superior">
      <div class="col-md-2">
        
      
      <a class="navbar-brand" href="dashboard.php">
        <img src="img/laborus.png" height="36px" alt="">
      </a>
    </div>
    <div class="col-md-10">
      
    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação menu">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#" id="toggle"><i class="fas fa-bars icone-sidebar"></i></a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="dashboard.php">Inicial</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Mensagens</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Configurações</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Dropdown
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Ação</a>
            <a class="dropdown-item" href="#">Outra ação</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Algo mais aqui</a>
          </div>
        </li>

      </ul>
      <div class="profile">
        <div class="dropdown">
          <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img src="img/avatar.jpg" alt="">
            
            <?php echo $_SESSION['nome']; ?>
          </a>

          <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <a class="dropdown-item" href="#">Alguma ação</a>
            <a class="dropdown-item" href="#">Outra ação</a>
            <a class="dropdown-item" href="gerencia_logout.php">Sair</a>
          </div>
        </div>
        
      </div>
      <form action="" class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" name="pesquisa" placeholder="Pesquisar" aria-label="Pesquisar" value="<?php echo (isset($_GET['pesquisa']) && $_GET['pesquisa'] != '' ? $_GET['pesquisa'] : ''); ?>" autofocus>
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
          <i class="fas fa-search"></i>
        </button>
        <a href="?" title="" class="btn btn-outline-warning my-2 my-sm-0" title="Limpar Filtro">
          <i class="far fa-times-circle"></i>
        </a>
      </form>

      
    </div>
    </div>
    </div>
    </div>
  </nav>