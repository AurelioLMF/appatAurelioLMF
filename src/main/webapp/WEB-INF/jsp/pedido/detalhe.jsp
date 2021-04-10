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
					<h2>Cadastramento de Pedidos</h2>
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

		<form action="/pedido/incluir" method="post">

			<div class="form-group">
				<label>Informe a descrição:</label> <input type="text"
					name="descricao" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Informe a quantidade:</label> <input type="number"
					name="qtde" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Informe a observação:</label> <input type="text"
					name="obs" class="form-control">
			</div>

			<div class="form-group">
				<label>Informe o solicitante:</label> <select class="form-control"
					name="solicitante.id">
					<c:forEach var="s" items="${solicitantes}">
						<option value="${s.id}">${s.nome}</option>
					</c:forEach>
				</select>
			</div>

			<button type="submit" class="btn btn-default">Cadastrar</button>
		</form>
		<br>
		<c:if test="${not empty lista}">
			<p>Listagem de pedidos:</p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Solicitante</th>
						<th>Descrição</th>
						<th>Quantidade</th>
						<th>Observação</th>						
						<th></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="p" items="${lista}">
						<tr>
							<td>${p.solicitante.nome}</td>
							<td>${p.descricao}</td>
							<td>${p.qtde}</td>
							<td>${p.obs}</td>
							<td><a href="/pedido/${p.id}/excluir">excluir</a></td>
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