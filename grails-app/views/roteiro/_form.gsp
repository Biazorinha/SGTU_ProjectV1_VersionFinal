<body class="bg-light">
<div class="container">
    <div class="row">
        <div class="col-md-8 order-md-1">
            <h4 class="mb-lg-auto text-center">Cadastro Roteiro</h4>
            <br/>
            <form class="needs-validation" novalidate="">
                <div class="col-md-6 mb-3">
                    <label for="numRoteiro">Cód. Roteiro</label>
                    <input type="text" class="form-control" name="numRoteiro" placeholder="" value="${roteiroInstance?.numRoteiro}" required="">
                    <div class="invalid-feedback">
                        É necessário informar o código do roteiro.
                    </div>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="nomeMotorista">Nome do Motorista</label>
                    <input type="text" class="form-control" name="nomeMotorista" placeholder="" value="${roteiroInstance?.nomeMotorista}" required="">
                    <div class="invalid-feedback">
                        É necessário informar o Nome do Motorista.
                    </div>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="rota">Rota</label>
                    <input type="text" class="form-control" name="rota" placeholder="" value="${roteiroInstance?.rota}" required="">
                    <div class="invalid-feedback">
                        É necessário informar a Rota.
                    </div>
                </div>


                <div class="col-md-6 mb-3">
                    <label for="statusRoteiro">Status do Roteiro</label>
                    <g:select id="statusRoteiro" name="statusRoteiro.id" from="${StatusRoteiro.list()}" optionKey="id" required="" value="${roteiroInstance?.statusRoteiro?.id}" class="many-to-one"/>
                    <div class="invalid-feedback">
                        É necessário informar o Status do Roteiro.
                    </div>
                </div>

                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit">Salvar</button>


            </form>
        </div>
    </div>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">© 2018 SGTU ProjecT</p>
    </footer>
</div>
</body>



%{--<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'numRoteiro', 'error')} required">--}%
%{--<label for="numRoteiro">--}%
%{--<g:message code="roteiro.numRoteiro.label" default="Num Roteiro" />--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:field name="numRoteiro" type="number" value="${roteiroInstance.numRoteiro}" required=""/>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'nomeMotorista', 'error')} required">--}%
%{--<label for="nomeMotorista">--}%
%{--<g:message code="roteiro.nomeMotorista.label" default="Nome Motorista" />--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:textField name="nomeMotorista" required="" value="${roteiroInstance?.nomeMotorista}"/>--}%

%{--</div>--}%


%{--<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'nomeMotorista', 'error')} required">--}%
%{--<label for="rota">--}%
%{--<g:message code="roteiro.nomeMotorista.label" default="Rota" />--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:textField name="rota" required="" value="${roteiroInstance?.rota}"/>--}%

%{--</div>--}%
%{--<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'statusRoteiro', 'error')} required">--}%
%{--<label for="statusRoteiro">--}%
%{--<g:message code="roteiro.statusRoteiro.label" default="Status Roteiro" />--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:select id="statusRoteiro" name="statusRoteiro.id" from="${StatusRoteiro.list()}" optionKey="id" required="" value="${roteiroInstance?.statusRoteiro?.id}" class="many-to-one"/>--}%
%{--</div>--}%

