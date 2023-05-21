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
	int statusCode = -1;
	
	String nomeQuery = request.getParameter("nome");
	
	if (nomeQuery != null) {
		for(Aluno a : Turma.alunos) {
			String nome = a.getNome();
			
			if (nome.equals(nomeQuery)) {
				aluno = a;
				statusCode = 1;
				break;
			}
			
			statusCode = 0;
		}
	}
%>

<body>
	<% if (statusCode < 0) { %>
		<form action="retrieve.jsp" method="get">
			Nome do aluno<input name="nome" />
			<input type="submit" value="Buscar">
		</form>
	<% } else { %>
		<h1>
			<%= statusCode > 0 ? "Aluno encontrado" : "Aluno não encontrado" %>
		</h1>
		<% if (statusCode > 0) { %>
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
	<% } %>
	<a href="index.jsp">Voltar</a>
</body>
</html>
