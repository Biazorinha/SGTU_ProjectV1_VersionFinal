<!doctype html>
<html lang="pt-br">
<body class="bg-light">
<div class="container">
    <div class="row">
        <div class="col-md-8 order-md-1">
            <h4 class="mb-lg-auto text-center">Cadastro</h4>
            <br/>
            <form class="needs-validation" novalidate="">
                <br>
                <a>${flash.message}</a>
                <br>
                <br>
                <br>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="nomeUsuario">Nome</label>
                        <input type="text" class="form-control" name="nomeUsuario" placeholder="" value="${cadastroInstance?.nomeUsuario}" required="true">
                        <div class="invalid-feedback">
                            É necessário informar seu nome.
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="dataNascimentoUsuario">Data de Nascimento</label>
                        %{--<input type="date" class="form-control" name="dataNascimentoUsuario" placeholder="" value="${cadastroInstance?.dataNascimentoUsuario}" required="">--}%
                        <div>
                            <g:datePicker name="dataNascimentoUsuario" default="${new Date()}" precision="day"  value="${cadastroInstance?.dataNascimentoUsuario}"  />
                        </div>
                        <div class="invalid-feedback">
                            Necessário informar a sua data de nascimento.
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5 mb-3">
                        <label for="numCpfUsuario">CPF</label>
                        <input class="form-control" name="numCpfUsuario" type="tel" required="" placeholder="Ex.: 000.000.000-00" value="${cadastroInstance?.numCpfUsuario}"  data-mask="000.000.000-00" maxlength="12">
                        <div class="invalid-feedback">
                            Necessário informar o número de CPF.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="numRgUsuario">RG</label>
                        <input class="form-control" name="numRgUsuario" type="tel" required="" value="${cadastroInstance?.numRgUsuario}"data-mask="00.000.000-00" maxlength="10">
                        <div class="invalid-feedback">
                            Necessário informar o número de RG.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="numCelular">Celular</label>
                        <input type="tel" class="form-control" id="phone" type="tel" name="numCelular" placeholder="(71) 9999-9999" required=""  value="${cadastroInstance?.numCelular}" data-mask="(00)00000-0000" maxlength="11">
                        <div class="invalid-feedback">
                            Número de celular é necessário.
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5 mb-3">
                        <label for="login">Login</label>
                        <div class="input-group">
                            <input type="text" class="form-control" maxlength="15" name="login" placeholder="Login" required="" value="${cadastroInstance?.login}" maxlength="15" minlength="5">
                            <div class="invalid-feedback" style="width: 100%;">
                                É necessário informar um Login.
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 mb-3">
                        <label for="senhaUsuario">Senha</label>
                        <input type="password" class="form-control" name="senhaUsuario" maxlength="15" placeholder="" required="" value="${cadastroInstance?.senhaUsuario}" maxlength="15" minlength="5">
                        <div class="invalid-feedback">
                            É necessário informar uma senha válida.
                        </div>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="emailUsuario">Email</label>
                    <input type="email" class="form-control" name="emailUsuario" placeholder="seu@email.com" value="${cadastroInstance?.emailUsuario}">
                    <div class="invalid-feedback">
                        É necessário informar um Email válido.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="nomeRua">Endereço</label>
                    <input type="text" class="form-control" name="nomeRua" placeholder="Rua ..." required="" value="${cadastroInstance?.nomeRua}">
                    <div class="invalid-feedback">
                        Por favor, insira o seu endereço.
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5 mb-3">
                        <label for="bairro">Bairro</label>
                        <input type="text" class="form-control" name="bairro" placeholder="" value="${cadastroInstance?.bairro}">
                        <div class="invalid-feedback">
                            Necessário informar um bairro.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="naturalidade">Naturalidade</label>
                        <input class="form-control" name="naturalidade" required="" value="${cadastroInstance?.naturalidade}">
                        <div class="invalid-feedback">
                            Por favor, insira sua naturalidade.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="numCEP">CEP</label>
                        <input type="text" class="form-control"  name="numCEP" type="tel" placeholder="00000-000" required="" value="${cadastroInstance?.numCEP}" data-mask="00000-000" maxlength="8">
                        <div class="invalid-feedback">
                            CEP é necessário.
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5 mb-3">
                        <label for="nomeCurso">Nome do curso</label>
                        <input type="text" class="form-control" name="nomeCurso" placeholder="" value="${cadastroInstance?.nomeCurso}">
                        <div class="invalid-feedback">
                            Necessário informar o nome do seu Curso.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="semestreCurso">Semestre</label>
                        <input class="form-control" name="semestreCurso" required="" type="tel" value="${cadastroInstance?.semestreCurso}" maxlength="2" min="1" max="12">
                        <div class="invalid-feedback">
                            Por favor, insira seu semestre.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="turnoCurso">Turno</label>
                        <input type="text" class="form-control" name="turnoCurso" placeholder="" required="" value="${cadastroInstance?.turnoCurso}">
                        <div class="invalid-feedback">
                            Por favor, insira o turno do seu curso.
                        </div>
                    </div>

                    <div class="col-md-12 text-area">
                        <label for="description">Feedback</label>
                        <input type="textarea" class="form-control" rows="5"  name="description" placeholder="" required="" value="${cadastroInstance?.description}">
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <div class="row col-md-12">
                        <div class="col-md-12 text-area">
                            <div class="dropdown ${hasErrors(bean: cadastroInstance, field: 'roteiro', 'error')} ">
                                <label for="roteiro">Roteiro</label>
                                <g:select  name="roteiro" from="${Roteiro.list()}"  optionKey="id" value="${cadastroInstance?.roteiro*.id}" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"/>
                            </div></div>
                    </div>
                    <div class="col-md-10 mb-3">
                        Selecione os arquivos escaneados (.jpg, .jpeg, .png): <input type="file" name="myFile" required= "true" accept=".jpg, .jpeg, .png">
                        ${flash.message}
                    </div>
                    <hr class="mb-4">
                    <button class="btn btn-primary btn-lg btn-block" type="submit">Salvar</button>
                </div>
            </form>
        </div>
    </div>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">© 2018 SGTU ProjecT</p>
    </footer>
</div>
</body>

%{--<!DOCTYPE html>--}%
%{--<html lang="en">--}%
%{--<head>--}%
%{--<title>Bootstrap Example</title>--}%
%{--<meta charset="utf-8">--}%
%{--<meta name="viewport" content="width=device-width, initial-scale=1">--}%
%{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--}%
%{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--}%
%{--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--}%
%{--</head>--}%
%{--<body>--}%
%{--<div class="container">--}%
%{--<!-- Modal -->--}%
%{--<div class="modal fade" id="myModal" role="dialog">--}%
%{--<div class="modal-dialog modal-sm">--}%
%{--<div class="modal-content">--}%
%{--<div class="modal-header">--}%
%{--<button type="button" class="close" data-dismiss="modal">&times;</button>--}%
%{--<h4 class="modal-title">Modal Header</h4>--}%
%{--</div>--}%
%{--<div class="modal-body">--}%
%{--<p>This is a small modal.</p>--}%
%{--<g:form url="[resource:cadastroInstance, action:'update']"  enctype="multipart/form-data" >--}%
%{--<g:uploadForm action="upload">--}%
%{--<input type="file" name="myFile" />--}%
%{--<input type="submit" />--}%
%{--</g:uploadForm>--}%
%{--</g:form>--}%
%{--</div>--}%
%{--<div class="modal-footer">--}%
%{--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</body>--}%
%{--</html>--}%