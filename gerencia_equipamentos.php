<?php 
include_once('bd/conexao.php');

$acao = $_GET['acao'] ?? 'redirect';
//deletar, salvar, alterar

if(isset($_GET['id']) && $acao == 'deletar') {
	$id = $_GET['id'];

	$sql = "DELETE FROM produtos WHERE id = {$id}";


	if(mysqli_query($conexao, $sql)) {
		$mensagem = 'Excluído com sucesso!';
		$alert = 'success';

	}else {
		$mensagem = 'Erro ao tentar excluir, verifique se o dado não está relacionado com outro registro!';
		$alert = 'danger';

	}


	header("Location: equipamentos.php?mensagem={$mensagem}&alert={$alert}");
} else if($acao == 'salvar') {
	
	$codigo = $_POST['codigo'];
	$nome = $_POST['nome'];
	$categoria_id = $_POST['categoria_id'];
	$preco = $_POST['preco'];
	$codigo = $_POST['codigo'];
	$data_compra = $_POST['data_compra'] . ' ' . date('H:m:i');

	$sql = "INSERT INTO produtos 
			(nome, categoria_id, preco, data_compra, codigo, usuario_id) 
			VALUES
			('$nome', '$categoria_id','$preco', '$data_compra','$codigo', 1);";


	mysqli_query($conexao, $sql);
	

	$mensagem = 'Salvo com sucesso!';

	header("Location: equipamentos.php?mensagem={$mensagem}&alert=success");

}



 ?>