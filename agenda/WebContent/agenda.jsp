<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Agenda de Contatos</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Agenda de Contatos</h1>
	<a class="Botao1" href="novo.html">Novo contato</a>
	<a href="report" class="Botao2">Relatório</a>
	<table id="tabela">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Fone</th>
				<th>E-mail</th>
			    <th>Opções</th>
			</tr>
		</thead>
		<tbody>
			<%  @ SuppressWarnings ("unchecked")
				ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");%>
			   <% for(JavaBeans contato : lista){%>
					<tr>
						<td><%=contato.getIdcon() %></td>
						<td><%=contato.getNome() %></td>
						<td><%=contato.getFone() %></td>
						<td><%=contato.getEmail() %></td>
						<td>
							<a href="select?idcon=<%=contato.getIdcon() %>" class="Botao1">Editar</a>
							<a href="javascript: confirmar(<%=contato.getIdcon() %>)" class="Botao2">Excluir</a>
						</td>
					</tr>					
			 <%} %>  
			
		</tbody>
	</table>
	<script src="scripts/confirmador.js"></script>"
</body>
</html>