/**
 * Confirmar de exclusao de um contato
 * @autor Luiz Fernando Nunes 
 * @param idcon
 */

function confirmar(idcon){
	let resposta = confirm("Confirma a exclusão deste contato???")
	if(resposta === true){
		window.location.href = "delete?idcon="+idcon
	}
}