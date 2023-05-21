<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Aluno, model.Turma" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<%
	Aluno a;
	int statusCode = -1;
	
	String nome = request.getParameter("nome");
	String turma = request.getParameter("turma");
	String ira = request.getParameter("ira");
	
	if (nome != null && turma != null && ira != null) {
		a = new Aluno(nome, turma, Integer.parseInt(ira));
		
		statusCode = Turma.alunos.add(a) ? 1 : 0;
	}
	 
%>

<body>
	<% if (statusCode < 0) { %>
		<h1>Criar aluno</h1>
		<form action="create.jsp" method="get">
			Nome <input name="nome" /><br>
			Turma <input name="turma" /><br>
			Ira <input name="ira" /><br>
			<input type="submit" value="Criar" />
		</form>
	<% } else { %>
		<h1><%= statusCode > 0 ? "Aluno criado!" : "Não foi possível criar" %></h1>
	<% } %>
	<a href="index.jsp">Voltar</a><br>
	<a href="listar.jsp">Listar alunos</a>
</body>
</html>