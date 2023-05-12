<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Aluno, model.Turma" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Listar alunos</title>
</head>
<body>
	<h1>Alunos cadastrados</h1>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Turma</th>
			<th>IRA</th>
		</tr>
		<%
			for (Aluno a : Turma.alunos) {
				out.print("<tr>");
					out.print("<td>" + a.getId() + "</td>");
					out.print("<td>" + a.getNome() + "</td>");
					out.print("<td>" + a.getTurma() + "</td>");
					out.print("<td>" + a.getIra() + "</td>");
				out.print("</tr>");
			}
		%>
	</table>
	<a href="index.jsp">Voltar</a>
</body>
</html>