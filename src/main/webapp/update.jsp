<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Aluno, model.Turma" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Atualizar aluno</title>
</head>

<%
	boolean encontrado = false;
	
	String nomeQuery = request.getParameter("nome");
	int novoIra = Integer.parseInt(request.getParameter("ira"));

	for(Aluno a : Turma.alunos) {
		String nome = a.getNome();
		
		if (nome.equals(nomeQuery)) {
			a.setIra(novoIra);
			encontrado = true;
			break;
		}
	}
%>

<body>
	<h1>
		<%= encontrado ? "Aluno atualizado com sucesso!" : "Aluno não encontrado" %>
	</h1>
	<a href="index.jsp">Voltar</a>
	<span>|</span>
	<a href="listar.jsp">Listar alunos</a>
</body>
</html>