<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Atualizar aluno</title>
</head>
<body>
	<h1>Atualizar aluno</h1>
	<form action="update.jsp" method="get">
		<div>
			<label>Nome do aluno</label>
			<input type="text" name="nome">
		</div>
		<div>
			<label>Novo ira</label>
			<input type="number" name="ira">
		</div>
		<input type="submit" value="Atualizar">
	</form>
	<a href="index.jsp">Voltar</a>
</body>
</html>