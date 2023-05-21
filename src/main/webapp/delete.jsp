<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Aluno, model.Turma" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Excluir aluno</title>
</head>

<%
	int statusCode = -1;
	
	String nomeQuery = request.getParameter("nome");

	if (nomeQuery != null) {
		for(Aluno a : Turma.alunos) {
			String nome = a.getNome();
			
			if (nome.equals(nomeQuery)) {
				Turma.alunos.remove(a);
				statusCode = 1;
				break;
			}
			
			statusCode = 0;
		}
	}
%>

<body>
	<% if (statusCode < 0) { %>
		<form action="delete.jsp" method="get">
			Nome do aluno <input name="nome">
			<input type="submit" value="Excluir">
		</form>
	<% } else { %>
		<h1>
			<%= statusCode > 0 ? "Aluno excluído com sucesso!" : "Aluno não encontrado" %>
		</h1>
	<% } %>
	<a href="index.jsp">Voltar</a>
	<br>
	<a href="listar.jsp">Listar alunos</a>
</body>
</html>
