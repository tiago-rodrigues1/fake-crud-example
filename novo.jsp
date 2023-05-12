<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Novo aluno</title>
</head>
<body>
	<h1>Cadastrar aluno</h1>
	<form action="create.jsp" method="get">
		<div>
			<label>Nome</label>
			<input type="text" name="nome">
		</div>
		<div>
			<label>Turma</label>
			<input type="text" name="turma">
		</div>
		<div>
			<label>IRA</label>
			<input type="number" name="ira">
		</div>
		<input type="submit" value="Criar">
	</form>
	<a href="index.jsp">Voltar</a>
</body>
</html>