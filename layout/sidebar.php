<?php 
include_once('bd/itens_menu.php');
 ?>
<div class="container-fluid">
  <div class="row">

    <div class=" sidebar" id="sidebar">
      <div class="accordion" id="accordionExample">
        <!-- repeticao do card de cada item de menu -->
        <?php foreach($menu as $chave => $item): ?>
        <div class="card">
          <div class="card-header" id="headingOne">
            <h5 class="mb-0">
              <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#item<?= $chave ?>" aria-expanded="true" aria-controls="collapseOne">
                <i class="fas fa-clipboard icone-sidebar"></i> 
                <?php echo $item['item']  ?>
              </button>
            </h5>
          </div>

          <div id="item<?= $chave ?>" class="collapse <?php echo($chave == 0 ? 'show' : '') ?>" aria-labelledby="headingOne" data-parent="#accordionExample">
            <div class="card-body">
              <ul class="nav flex-column menu-lateral">
                <?php foreach($item['opcoes'] as $chave_opcao => $opcao): ?>
                  <li class="nav-item"><a class="nav-link" href="clientes.php">
                    <?php echo $opcao ?>
                  </a></li>
                <?php endforeach; ?>
                <!-- <li class="nav-item"><a class="nav-link" href="fornecedores.php">Fornecedor</a></li>
                <li class="nav-item"><a class="nav-link" href="colaboradores.php">Colaborador</a></li>
                <li class="nav-item"><a class="nav-link" href="equipamentos.php">Equipamento</a></li>
                <li class="nav-item"><a class="nav-link" href="produtos.php">Produtos</a></li>
                <li class="nav-item"><a class="nav-link" href="servicos.php">Serviços</a></li>
                <li class="nav-item"><a class="nav-link" href="categorias.php">Categorias</a></li> -->
              </ul>
            </div>
          </div>
        </div>
      <?php endforeach; ?>





        <!-- <div class="card">
          <div class="card-header" id="headingOne">
            <h5 class="mb-0">
              <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                <i class="fas fa-clipboard icone-sidebar"></i> Cadastro
              </button>
            </h5>
          </div>

          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
            <div class="card-body">
              <ul class="nav flex-column menu-lateral">
                <li class="nav-item"><a class="nav-link" href="clientes.php">Cliente</a></li>
                <li class="nav-item"><a class="nav-link" href="fornecedores.php">Fornecedor</a></li>
                <li class="nav-item"><a class="nav-link" href="colaboradores.php">Colaborador</a></li>
                <li class="nav-item"><a class="nav-link" href="equipamentos.php">Equipamento</a></li>
                <li class="nav-item"><a class="nav-link" href="produtos.php">Produtos</a></li>
                <li class="nav-item"><a class="nav-link" href="servicos.php">Serviços</a></li>
                <li class="nav-item"><a class="nav-link" href="categorias.php">Categorias</a></li>
              </ul>
            </div>
          </div>
        </div> -->


      </div>
    </div>


    <div class="content" id="main-content">
        <div class="row conteudo">