<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
					<h2>${user.nome}</h2>
					<h3>${user.email}</h3>
				</div>
				<div class="panel-body">
					<h5>
						<a href="${user.git}">GIT</a>
					</h5>
				</div>
			</div>

			<div class="btn-goup">
				<form action="/">
					<button type="submit" class="btn btn-link">
						<h5>Novo Login</h5>
					</button>
				</form>
			</div>

			<div class="panel-body">
				<div class="btn-group">
					<form action="/solicitante" method="get">
						<button type="submit" class="btn btn-info">Novo Solicitante</button>
					</form>
				</div>
			</div>
			<div class="panel-body">
				<div class="btn-group">
					<form action="/pedido" method="get">
						<button type="submit" class="btn btn-warning">Novo Pedido</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>