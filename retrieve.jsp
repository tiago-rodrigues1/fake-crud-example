<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Aluno, model.Turma" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Resultados da busca</title>
</head>

<%
	Aluno aluno = new Aluno();
	boolean encontrado = false;
	
	String nomeQuery = request.getParameter("nome");

	for(Aluno a : Turma.alunos) {
		String nome = a.getNome();
		
		if (nome.equals(nomeQuery)) {
			aluno = a;
			encontrado = true;
			break;
		}
	}
%>

<body>
	<h1>
		<%= encontrado ? "Aluno encontrado" : "Aluno não encontrado" %>
	</h1>
	<% if (encontrado) { %>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>Turma</th>
				<th>IRA</th>
			</tr>
			<tr>
				<td><%= aluno.getId() %></td>
				<td><%= aluno.getNome() %></td>
				<td><%= aluno.getTurma() %></td>
				<td><%= aluno.getIra() %></td>
			</tr>
		</table>
	<% } %>
	<a href="index.jsp">Voltar</a>
</body>
</html>
