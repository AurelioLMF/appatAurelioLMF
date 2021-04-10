<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App Bolo di Casa</title>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">  
</head>
<body>
	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>Cadastramento de Solicitantes</h2>
				</div>

				<div class="panel-body">
					<div class="btn-group">
						<form action="/home">
							<button type="submit" class="btn btn-default">Home</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-warning">
				<strong>Palma palma palma, não criemos cânico...</strong> ${mensagem}
			</div>
		</c:if>

		<form action="/solicitante/incluir" method="post">

			<div class="form-group">
				<label>Informe o nome:</label> <input type="text"
					name="nome" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Informe o e-mail:</label> <input type="email"
					name="email" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Informe o endereco:</label> <input type="text"
					name="endereco" class="form-control">
			</div>

			<button type="submit" class="btn btn-default">Cadastrar</button>
		</form>
		<br>
		<c:if test="${not empty lista}">
			<p>Listagem de solicitantes:</p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Usuário</th>
						<th>Nome</th>
						<th>E-mail</th>
						<th>Endereço</th>						
						<th></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="s" items="${lista}">
						<tr>
							<td>${s.usuario.id}</td>
							<td>${s.nome}</td>
							<td>${s.email}</td>
							<td>${s.endereco}</td>
							<td><a href="/solicitante/${s.id}/excluir">excluir</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

		</c:if>

		<c:if test="${empty lista}">
			<p>Nenhum pedido cadastrado!</p>
		</c:if>
	</div>
</body>
</html>