<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cadastro</title>

    %{--<!-- Bootstrap core CSS -->--}%
    %{--<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'bootstrap.min.css')}" />--}%
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">    %{--<link href="" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--}%
%{--<!-- Custom styles for this template -->--}%
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'form-validation.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'docs.min.css')}" />
</head>

<body class="bg-light">
<header class="navbar navbar-expand navbar-dark flex-column flex-md-row bd-navbar">
    <div class="navbar-nav-scroll">
        <ul class="navbar-nav bd-navbar-nav flex-row">
            <li class="nav-item">
                <a class="nav-link " href="${createLink(uri: '/')}" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Sair</a>
            </li>

            <li class="nav-item">
                <a class="nav-link " href="${createLink(uri: '/cadastro/index')}" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Lista de Usuários</a>
            </li>
        </ul>
    </div>
</header>

<div id="create-cadastro" class="content scaffold-create" role="main">
%{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
%{--<g:if test="${flash.message}">--}%
%{--<div class="message" role="status">${flash.message}</div>--}%
%{--</g:if>--}%
%{--<g:hasErrors bean="${cadastroInstance}">--}%
%{--<ul class="errors" role="alert">--}%
%{--<g:eachError bean="${cadastroInstance}" var="error">--}%
%{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
%{--</g:eachError>--}%
%{--</ul>--}%
%{--</g:hasErrors>--}%
    <g:form url="[resource:cadastroInstance, action:'save']"  enctype="multipart/form-data" >
        <fieldset class="form">
            <g:render template="formAdmin"/>
        </fieldset>

    </g:form>


</div>




<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<g:javascript src="bootstrap.min.js" />
<g:javascript src="jquery-slim.min.js" />
<g:javascript src="jquery-3.2.1.slim.min.js" />
<g:javascript src="holder.min.js" />
<g:javascript src="popper.min.js" />
</body>
</html>
