<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App Bolo di Casa</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading"></div>
				<h2>Cadastramento de Usuários</h2>
			</div>
		</div>
	</div>

	<div class="panel-body">
		<div class="btn-goup">

			<form action="/">
				<button type="submit" class="btn btn-link">Home</button>
			</form>
		</div>
	</div>

	<form action="/usuario/incluir" method="post">

		<div class="form-group">
			<label>Informe seu nome:</label> <input type="text" name="nome"
				class="form-control">
		</div>

		<div class="form-group">
			<label>Informe seu e-mail:</label> <input type="email" name="email"
				class="form-control">
		</div>

		<div class="form-group">
			<label>Informe sua senha:</label> <input type="password" name="senha"
				class="form-control">
		</div>

		<div class="form-group">
			<label>Informe seu git:</label> <input type="text" name="git"
				class="form-control">
		</div>

		<button type="submit">Cadastrar</button>
	</form>
<br>
	<c:if test="${not empty lista}">
		<h4>Listagem de Usuários:</h4>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Nome</th>
					<th>E-mail</th>
					<th>Senha</th>
					<th>Git</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${lista}">
					<tr>					
						<td>${u.nome}</td>
						<td>${u.email}</td>
						<td>${u.senha}</td>						
						<td>${u.git}</td>
						<td><a href="/usuario/${u.id}/excluir">excluir</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</c:if>

	<c:if test="${empty lista}">
		<h4>Nenhuma usuário cadastrado!!!</h4>
	</c:if>

</body>
</html>