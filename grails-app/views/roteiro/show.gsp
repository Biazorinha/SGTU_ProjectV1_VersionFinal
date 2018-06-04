<!doctype html>
<html lang="pt-br">
<html>
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	%{--<!-- Bootstrap core CSS -->--}%
	%{--<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'bootstrap.min.css')}" />--}%
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">    %{--<link href="" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--}%
%{--<!-- Custom styles for this template -->--}%
	<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'form-validation.css')}" />
	<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'docs.min.css')}" />
</head>
<body>


<header class="navbar navbar-expand navbar-dark flex-column flex-md-row bd-navbar">
	<div class="navbar-nav-scroll">
		<ul class="navbar-nav bd-navbar-nav flex-row">
			<li class="nav-item">
				<a class="nav-link " href="${createLink(uri: '/')}" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Sair</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${createLink(uri:'/roteiro/index')}" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Listar Roteiros</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${createLink(uri:'/roteiro/create')}" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Cadastrar Roteiro</a>
			</li>
		</ul>
	</div>
</header>
<div id="show-roteiro" class="container-fluid">
	<ul class="list-group list-group-flush">
		<br>
		<br>
		<li class="list-group-item">
			<span id="numRoteiro-label" class="property-label"><g:message code="roteiro.numRoteiro.label" default="Cód. Roteiro:" /></span>
			<span class="property-value" aria-labelledby="numRoteiro-label"><g:fieldValue bean="${roteiroInstance}" field="numRoteiro"/></span>
		</li>
		<li class="list-group-item">
			<span id="nomeMotorista-label" class="property-label"><g:message code="roteiro.nomeMotorista.label" default="Nome do Motorista:" /></span>
			<span class="property-value" aria-labelledby="nomeMotorista-label"><g:fieldValue bean="${roteiroInstance}" field="nomeMotorista"/></span>
		</li>
		<li class="list-group-item">
			<span id="rota-label" class="property-label"><g:message code="roteiro.rota.label" default="Rota:" /></span>
			<span class="property-value" aria-labelledby="rota-label"><g:fieldValue bean="${roteiroInstance}" field="rota"/></span>
		</li>
		<li class="list-group-item">
			<span id="statusRoteiro-label" class="property-label"><g:message code="roteiro.statusRoteiro.label" default="Status do Roteiro:" /></span>
			<span class="property-value" aria-labelledby="statusRoteiro-label">${roteiroInstance?.statusRoteiro?.encodeAsHTML()}</span>
		</li>
	</ul>
	<br>
	<br>
	<br>
	<g:form url="[resource:roteiroInstance, action:'delete']" method="DELETE">
		<fieldset class="buttons">
			<g:link class="btn btn-lg btn-warning" action="edit" resource="${roteiroInstance}">Editar</g:link>
			<g:link class="btn btn-lg btn-warning" action="editStatus" resource="${roteiroInstance}">Editar Status</g:link>
			<g:actionSubmit class="btn btn-lg btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Deletar')}"  />
		</fieldset>
	</g:form>
</div>
</body>
</html>
