<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Aluno, model.Turma" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<%
	String nome = request.getParameter("nome");
	String turma = request.getParameter("turma");
	int ira = Integer.parseInt(request.getParameter("ira"));
	
	Aluno aluno = new Aluno(nome, turma, ira);
	
	boolean resultado = Turma.alunos.add(aluno);
%>

<body>
	<h1>
		<%= resultado ? "Aluno criado com sucesso!" : "Não foi possível criar aluno" %>
	</h1>
	<a href="index.jsp">Voltar</a>
	<span>|</span>
	<a href="listar.jsp">Listar alunos</a>
</body>
</html>