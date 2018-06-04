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
				<a class="nav-link " href="${createLink(uri: '/roteiro/index')}" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Roteiros/Rotas</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${createLink(uri:'/cadastro/createAdmin')}" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Cadastrar Usuário</a>
			</li>
		</ul>
	</div>
</header>

%{--<a href="#list-cadastro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%

<div class="container-fluid">
	<div class="row align-content-center">
		<table class="table table-sm">
			<thead>
			<tr>
				<th scope="col"></th>
				<th scope="col">Nome</th>
				<th scope="col">CPF</th>
				<th scope="col">Turno</th>
				<th scope="col">Endereço</th>
				<th scope="col">Celular</th>
				<th scope="col">Feedback</th>
				<th scope="col">Roteiro</th>
			</tr>
			</thead>
			<tbody>
			<g:each in="${cadastroInstanceList}" status="i" var="cadastroInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<th scope="row"></th>
					<td><g:link action="show" id="${cadastroInstance.id}">${fieldValue(bean: cadastroInstance, field: "nomeUsuario")}</g:link></td>
					<td>${fieldValue(bean: cadastroInstance, field: "numCpfUsuario")}</td>
					<td>${fieldValue(bean: cadastroInstance, field: "turnoCurso")}</td>
					<td>${fieldValue(bean: cadastroInstance, field: "nomeRua")}</td>
					<td>${fieldValue(bean: cadastroInstance, field: "numCelular")}</td>
					<td>${fieldValue(bean: cadastroInstance, field: "description")}</td>
					<td>${fieldValue(bean: cadastroInstance, field: "roteiro")}</td>
				</tr>
			</g:each>
			</tbody>
		</table></div>
</div>
<div class="pagination">
	<g:paginate total="${cadastroInstanceCount ?: 0}" />
</div>
</div>

</body>
</html>
