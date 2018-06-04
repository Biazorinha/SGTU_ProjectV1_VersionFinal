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

