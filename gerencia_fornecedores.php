<?php 
include_once('bd/conexao.php');

$acao = $_GET['acao'] ?? 'redirect';
//deletar, salvar, alterar

if(isset($_GET['id']) && $acao == 'deletar') {
	$id = $_GET['id'];

	$sql = "DELETE FROM fornecedores WHERE id = {$id}";


	if(mysqli_query($conexao, $sql)) {
		$mensagem = 'Excluído com sucesso!';
		$alert = 'success';

	}else {
		$mensagem = 'Erro ao tentar excluir, verifique se o dado não está relacionado com outro registro!';
		$alert = 'danger';

	}


	header("Location: fornecedores.php?mensagem={$mensagem}&alert={$alert}");
} else if($acao == 'salvar') {
	
	$cnpj = $_POST['cpf'];
	$nome = $_POST['nome'];
	$razao = $_POST['nome'];
	$telefone = $_POST['telefone'];
	$email = $_POST['email'];
	$nome_contato = $_POST['nome_contato'];
	$cep = $_POST['cep'];
	$logradouro = $_POST['logradouro'];
	$numero = $_POST['numero'];
	$complemento = $_POST['complemento'];
	$bairro = $_POST['bairro'];
	$cidade = $_POST['cidade'];
	$estado = $_POST['estado'];

	$sql = "INSERT INTO fornecedores 
			(razao_social, fantasia, cnpj, email, telefone, nome_contato, cep ,logradouro, numero, complemento, bairro, cidade, estado,usuario_id) 
			VALUES
			('$razao', '$nome','$cnpj', '$email', '$telefone', '$nome_contato', '$cep','$logradouro','$numero', '$complemento', '$bairro', '$cidade', '$estado','1');";


	mysqli_query($conexao, $sql);
	

	$mensagem = 'Salvo com sucesso!';

	header("Location: fornecedores.php?mensagem={$mensagem}&alert=success");

}



 ?>