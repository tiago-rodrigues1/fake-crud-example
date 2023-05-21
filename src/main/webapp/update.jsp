<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Aluno, model.Turma" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Atualizar aluno</title>
</head>

<%
	int statusCode = -1;
	
	String nomeQuery = request.getParameter("nome");
	String novoIra = request.getParameter("ira");

	if (nomeQuery != null && novoIra != null ) {
		for(Aluno a : Turma.alunos) {
			String nome = a.getNome();
			
			if (nome.equals(nomeQuery)) {
				a.setIra(Integer.parseInt(novoIra));
				statusCode = 1;
				break;
			}
			
			statusCode = 0;
		}
	}
%>

<body>
	<% if (statusCode < 0) { %>
		<form action="update.jsp" method="get">
			Nome do aluno <input name="nome"><br>
			Novo IRA <input name="ira"><br>
			<input type="submit" value="atualizar">
		</form>
	<% } else { %>
		<h1>
			<%= statusCode > 0 ? "Aluno atualizado com sucesso!" : "Aluno não encontrado" %>
		</h1>
	<% } %>
	<a href="index.jsp">Voltar</a>
	<span>|</span>
	<a href="listar.jsp">Listar alunos</a>
</body>
</html>