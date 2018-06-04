

<%--
  Created by IntelliJ IDEA.
  User: jefferson.s.silva

  Date: 28/05/2018
  Time: 01:15
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
</head>

<body class="text-center">

<div></div>

<div class="form-signin">
    ${flash.message}

    <img width="300px" height="200px" src="images/logo-sgtu.png"/>
    <g:form  controller="login" action="login">
    %{--<h1 class="h3 mb-3 font-weight-normal">SGTU</h1>--}%
        <div>
            <label  class="sr-only">Login</label>
            <input type="text" name="username" class="form-control" placeholder="Usuário" required autofocus/>
            <label  class="sr-only">Password</label>
            <input type="password" name="password" class="form-control" placeholder="Senha" required>

            <label>&nbsp</label><input class="btn btn-lg btn-primary btn-block"  type="submit" value="Login">

        </div>
    </g:form>
    <br/>
    <div >
        <g:remoteLink  controller="cadastro" action="create">
            <button class="align-bottom btn btn-lg btn-primary btn-block">Registre-se</button>
        </g:remoteLink>
    </div>
    <br>
    <div >
        <g:remoteLink  controller="roteiro" action="indexMain">
            <button class="align-bottom btn btn-lg btn-primary btn-block">Status dos Roteiros</button>
        </g:remoteLink>
    </div>


</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>
