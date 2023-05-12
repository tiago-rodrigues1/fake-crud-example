<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Buscar Aluno</title>
</head>
<body>
	<h1>Buscar aluno</h1>
	<form action="retrieve.jsp" method="get">
		<div>
			<label>Nome do aluno</label>
			<input type="text" name="nome">
		</div>
		<input type="submit" value="Buscar">
	</form>
	<a href="index.jsp">Voltar</a>
</body>
</html>