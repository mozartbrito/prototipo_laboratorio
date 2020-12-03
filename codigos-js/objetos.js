// classe: modelos de atributos e ações
//pessoa: 
//	atributos: cor, cabelo, olhos, altura, sexo
//  ações: falar, andar, correr

//objeto passa a existir: instância de uma classe, a classe foi instanciada

//React, VUEjs, Angular -> Typescript -> tipar variáveis e trabalhar com OO como outras linguagens
//transpiler -> converte o typescript em um script legível para o navegador
//Joao
/*const joao = {
	nome: 'João',
	sobrenome: 'Silva',
	idade: 32
}
const maria = {
	nome: 'Maria',
	sobrenome: 'Assis',
	idade: 41
}
joao.nome = 'Joao Souza';*/


const objeto = {
	nome: "Computador",
	tamanhoW: 45,
	tamanhoH: 180,
	componentes: [
		{ descricao: 'Mouse' },
		{ descricao: 'Teclado' },
		{ descricao: 'Monitor'}
	],
	processar: (parametro1, parametro2) => {
		let soma = parametro1 + parametro2
		return soma
	}
};
//objeto.nome
// console.log(objeto.componentes)
// objeto.componentes.push({descricao: 'Processador i7'})
// console.log(objeto.componentes)
var texto = "Aula maneira 2";
console.log(texto.toLocaleLowerCase().split("a"))