<!doctype html>
<html lang="pt-br">
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    %{--<!-- Bootstrap core CSS -->--}%
    %{--<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'bootstrap.min.css')}" />--}%
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">    %{--<link href="" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--}%
%{--<!-- Custom styles for this template -->--}%
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'form-validation.css')}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'docs.min.css')}"/>
</head>

<body>
<header class="navbar navbar-expand navbar-dark flex-column flex-md-row bd-navbar">
    <div class="navbar-nav-scroll">
        <ul class="navbar-nav bd-navbar-nav flex-row">
            <li class="nav-item">
                <a class="nav-link " href="${createLink(uri: '/')}"
                   onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Sair</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${createLink(uri: '/roteiro/create')}"
                   onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Cadastrar Roteiro</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${createLink(uri: '/cadastro/index')}"
                   onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Lista de Usuários</a>
            </li>
        </ul>
    </div>
</header>

<div class="container-fluid">
    <div class="row align-content-center">
        <table class="table table-sm">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Cód. Roteiro</th>
                <th scope="col">Nome do Motorista</th>
                <th scope="col">Rota</th>
                <th scope="col">Status</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${roteiroInstanceList}" status="i" var="roteiroInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <th scope="row">1</th>
                    <td><g:link action="show"
                                id="${roteiroInstance.id}">${fieldValue(bean: roteiroInstance, field: "numRoteiro")}</g:link></td>
                    <td>${fieldValue(bean: roteiroInstance, field: "nomeMotorista")}</td>
                    <td>${fieldValue(bean: roteiroInstance, field: "rota")}</td>
                    <td>${fieldValue(bean: roteiroInstance, field: "statusRoteiro")}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>

<div class="pagination">
    <g:paginate total="${roteiroInstanceCount ?: 0}"/>
</div>
</div>
</body>

</html>
