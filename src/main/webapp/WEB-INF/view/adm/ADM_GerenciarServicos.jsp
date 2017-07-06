<%@	page language="java" contentType="text/html;	charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PetShow</title>
<link rel="icon" type="image/png" href="/img/Logos/favicon.ico"
	sizes="32x32" />
<link rel="stylesheet" href="/bootstrap-3.3.7/css/bootstrap.css" />
<link rel="stylesheet" href="/css/style.css" />
</head>
<body>
	<%@ include file="ADM_Cabecalho.jsp"%>

	<div class="col-lg-12 spacebottom container">
		<div class="col-lg-2"></div>
		<div class="col-lg-8">
			<a href=""><button></button></a>
			<div>
				<h1>Gerenciar Servicos</h1>
				<table class="table table-hover text-center">
					<thead>
						<tr>
							<th class="text-center">Nome</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="servico" items="${servicos}">
							<tr>
								<td>${servico.nome}</td>
								<!-- Botão Visualizar-->
								<td><a href="/adm/" class="btn btn-primary"><span
										class="glyphicon glyphicon-eye-open"></span> Visualizar</a></td>
								<!--Botão Editar  -->
								<td><a href="/adm/" class="btn btn-warning"><span
										class="glyphicon glyphicon-edit"></span> Editar</a></td>
								<!-- Botão Deletar-->
								<td><a href="/adm/" class="btn btn-danger"><span
										class="glyphicon glyphicon-trash"></span> Remover</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-lg-2"></div>
	</div>
	<script src="/js/jquery.js"></script>
	<script src="/js/jquery.maskedinput.js"></script>
	<script src="/bootstrap-3.3.7/js/bootstrap.js"></script>
</body>
</html>