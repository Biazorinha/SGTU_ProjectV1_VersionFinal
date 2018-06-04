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
            <a class="nav-link" <g:link action="list" id="${cadastroInstance.id}">Meus Dados</g:link></a>
            </li>

        </ul>
    </div>
</header>
<div id="show-roteiro" class="container-fluid">
    <ul class="list-group list-group-flush">

        <li class="list-group-item">
            <span id="nomeUsuario-label" class="property-label"><g:message code="cadastro.nomeUsuario.label" default="Nome: " /></span>
            <span class="property-value" aria-labelledby="nomeUsuario-label"><g:fieldValue bean="${cadastroInstance}" field="nomeUsuario"/></span>
        </li>
        <li class="list-group-item">
            <span id="numCpfUsuario-label" class="property-label"><g:message code="cadastro.numCpfUsuario.label" default="CPF: " /></span>
            <span class="property-value" aria-labelledby="numCpfUsuario-label"><g:fieldValue bean="${cadastroInstance}" field="numCpfUsuario"/></span>
        </li>
        <li class="list-group-item">
            <span id="numRgUsuario-label" class="property-label"><g:message code="cadastro.numRgUsuario.label" default="RG: " /></span>
            <span class="property-value" aria-labelledby="numRgUsuario-label"><g:fieldValue bean="${cadastroInstance}" field="numRgUsuario"/></span>
        </li>
        <li class="list-group-item">
            <span id="dataNascimentoUsuario-label" class="property-label"><g:message code="cadastro.dataNascimentoUsuario.label" default="Data de Nascimento:" /></span>
            <span class="property-value" aria-labelledby="dataNascimentoUsuario-label"><g:formatDate date="${cadastroInstance?.dataNascimentoUsuario}" format="dd-MM-yyyy" /></span>
        </li>
        <li class="list-group-item">
            <span id="nomeRua-label" class="property-label"><g:message code="cadastro.nomeRua.label" default="Endereço:" /></span>
            <span class="property-value" aria-labelledby="nomeRua-label"><g:fieldValue bean="${cadastroInstance}" field="nomeRua"/></span>
        </li>
        <li class="list-group-item">
            <span id="numCelular-label" class="property-label"><g:message code="cadastro.numCelular.label" default="Celular:" /></span>
            <span class="property-value" aria-labelledby="numCelular-label"><g:fieldValue bean="${cadastroInstance}" field="numCelular"/></span>
        </li>
        <li class="list-group-item">
            <span id="numCEP-label" class="property-label"><g:message code="cadastro.numCEP.label" default="CEP: " /></span>
            <span class="property-value" aria-labelledby="numCEP-label"><g:fieldValue bean="${cadastroInstance}" field="numCEP"/></span>
        </li>
        <li class="list-group-item">
            <span id="naturalidade-label" class="property-label"><g:message code="cadastro.naturalidade.label" default="Naturalidade: " /></span>
            <span class="property-value" aria-labelledby="naturalidade-label"><g:fieldValue bean="${cadastroInstance}" field="naturalidade"/></span>
        </li>
        <li class="list-group-item">
            <span id="bairro-label" class="property-label"><g:message code="cadastro.bairro.label" default="Bairro: " /></span>
            <span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${cadastroInstance}" field="bairro"/></span>
        </li>
        <li class="list-group-item">
            <span id="nomeCurso-label" class="property-label"><g:message code="cadastro.nomeCurso.label" default="Nome do Curso: " /></span>
            <span class="property-value" aria-labelledby="nomeCurso-label"><g:fieldValue bean="${cadastroInstance}" field="nomeCurso"/></span>
        </li>
        <li class="list-group-item">
            <span id="semestreCurso-label" class="property-label"><g:message code="cadastro.semestreCurso.label" default="Semestre do Curso: " /></span>
            <span class="property-value" aria-labelledby="semestreCurso-label"><g:fieldValue bean="${cadastroInstance}" field="semestreCurso"/></span>
        </li>
        <li class="list-group-item">
            <span id="turnoCurso-label" class="property-label"><g:message code="cadastro.turnoCurso.label" default="Turno do Curso: " /></span>
            <span class="property-value" aria-labelledby="turnoCurso-label"><g:fieldValue bean="${cadastroInstance}" field="turnoCurso"/></span>
        </li>
        <li class="list-group-item">
            <span id="emailUsuario-label" class="property-label"><g:message code="cadastro.emailUsuario.label" default="Email: " /></span>
            <span class="property-value" aria-labelledby="emailUsuario-label"><g:fieldValue bean="${cadastroInstance}" field="emailUsuario"/></span>
        </li>
        <li class="list-group-item">
            <span id="login-label" class="property-label"><g:message code="cadastro.login.label" default="Login: " /></span>
            <span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${cadastroInstance}" field="login"/></span>
        </li>
    </ul>
    <br><br>
    <g:form url="[resource:cadastroInstance, action:'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="btn btn-bd-primary cente" action="editUser" resource="${cadastroInstance}">Editar</g:link>
        </fieldset>
    </g:form>
</div>
</body>
</html>
