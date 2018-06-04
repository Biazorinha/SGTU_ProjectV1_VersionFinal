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
<div id="edit-roteiro" class="content scaffold-edit" role="main">
	<g:form url="[resource:roteiroInstance, action:'update']" method="PUT" >
		<g:hiddenField name="version" value="${roteiroInstance?.version}" />
		<fieldset class="form">
			<g:render template="formEditStatus"/>
		</fieldset>
	%{--<fieldset class="buttons">--}%
	%{--<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
	%{--</fieldset>--}%
	</g:form>
</div>
</body>
</html>
