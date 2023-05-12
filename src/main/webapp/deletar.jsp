<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Excluir aluno</title>
</head>
<body>
	<h1>Excluir aluno</h1>
	<form action="delete.jsp" method="get">
		<div>
			<label>Nome do aluno</label>
			<input type="text" name="nome">
		</div>
		<input type="submit" value="Excluir">
	</form>
	<a href="index.jsp">Voltar</a>
</body>
</html>