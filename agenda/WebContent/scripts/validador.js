/**
 *  Validar formulario
 *  @autor Luiz Fernando Nunes
 *  
 */

function validar(){
	let nome = formContato.nome.value
	let fone = formContato.fone.value
	
	if(nome === ""){
		alert('Preencha o campo nome')
		formContato.nome.focus()
		return false
	}else if(fone === ""){
		alert('Preencha o campo fone')
		formContato.fone.focus()
		return false 
	}else{
		document.forms["formContato"].submit()
	}
}