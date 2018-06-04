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
                <a class="nav-link btn" href="${createLink(uri: '/')}" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Sair</a>
            </li>
        </ul>
    </div>
</header>


<div class="text-center">

    <h2 class="h3 mb-3 font-weight-normal">Seus Dados</h2>
    <h2 class="h3 mb-3 font-weight-normal">Olá ${fieldValue(bean: cadastroList, field: "nomeUsuario")}</h2>
    <br/>
    <div class="container-fluid">
        <div class="row align-content-center">
            <table class="table table-sm">
                <thead>
                <tr>
                    <th scope="col"></th>
                    <th scope="col">Nome</th>
                    <th scope="col">Curso</th>
                    <th scope="col">Feedback</th>
                    <th scope="col">Roteiro</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row"></th>
                    <td>${cadastroList.nomeUsuario}</td>
                    <td>${cadastroList.nomeCurso}</td>
                    <td>${cadastroList.description}</td>
                    <td>${cadastroList.roteiro}</td>
                    <g:each in="${cadastroList}" status="i" var="cadastroInstance">
                        <td>
                            <a class="btn btn-bd-primary" <g:link action="showUser" id="${cadastroInstance.id}">Editar</g:link></a>
       </td>
                    </g:each>
                </tr>
                </tbody>
            </table></div>
    </div>
    <div class="mb-sm-0 btn btn-bd-primary">

        %{--<button class="align-bottom btn mb-sm-0 btn-sm-0 btn-primary btn-block">--}%
        %{--<g:link action="showUser" id="${cadastroList.id}"></g:link></button>--}%

    <a class="nav-link btn"  <g:link action="showUser" id="${cadastroList.id}">Voltar </g:link></a>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
</body>
</html>