
<head>
    <meta name="layout" content="main"/>
    <title>Sistema de Gerenciamento para bibliotecas</title>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<g:each in="${roteiro}" var="rot" status="i">
    <div class="container">

        <div class="[ col-xs-12 col-sm-6 ]">
            <h3>Standard Checkboxes</h3><hr />
            <div class="[ form-group ]">
                <input type="checkbox" name="fancy-checkbox-default" id="fancy-checkbox-default" autocomplete="off" />
                <div class="[ btn-group ]">
                    <label for="fancy-checkbox-default" class="[ btn btn-default ]">
                        <span class="[ glyphicon glyphicon-ok ]"></span>
                        <span> </span>
                    </label>
                    <label for="fancy-checkbox-default" class="[ btn btn-default active ]">
                        ${rot.statusRoteiro}
                    </label>
                </div>
            </div>
        </div>
    </div>

</g:each>
<fieldset id="divListBibliotecas">

    <Legend> Total de Bibliotecas >> ${countListRot}</Legend>

    <table border="2px" width="710px">
        <thead>
        <td width="26%" style="text-align: center">Número do Roteiro:</td>
        <td width="26%" style="text-align: center">Status:</td>
        <td width="26%" style="text-align: center">Excluir:</td>
        </thead>
        <tbody>
        <g:each in="${roteiro}" var="rot" status="i">
            <tr class="${(i % 2) == 0 ? 'linhaclara' : 'linhaescura'}">


                <div class="container">

                    <div class="[ col-xs-12 col-sm-6 ]">
                        <h3>Standard Checkboxes</h3><hr />
                        <div class="[ form-group ]">
                            <input type="checkbox" name="fancy-checkbox-default" id="fancy-checkbox-default" autocomplete="off" />
                            <div class="[ btn-group ]">
                                <label for="fancy-checkbox-default" class="[ btn btn-default ]">
                                    <span class="[ glyphicon glyphicon-ok ]"></span>
                                    <span> </span>
                                </label>
                                <label for="fancy-checkbox-default" class="[ btn btn-default active ]">
                                    ${rot.statusRoteiro}
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <td style="text-align: center">${rot.numRoteiro}</td>
                <td style="text-align: center">${rot.statusRoteiro}</td>
                <td style="text-align: center">
                    <g:remoteLink controller="roteiro" action="update" update="new"  id="${rot.id}">
                        <img src="${resource(dir: 'images/skin', file: 'database_edit.png')}" alt="Closed" width="10" height="10"/>
                    </g:remoteLink>
                </td>
                <td style="text-align: center">
                    <g:remoteLink controller="roteiro" action="delete" update="listDiv"  id="${rot.id}"  before="if(!confirm('Tem certeza que deseja deletar a biblioteca?')) return false">
                        <img src="${resource(dir: 'images', file: 'database_delete.png')}" alt="Closed" width="10" height="10"/>
                    </g:remoteLink>
                </td>
            </tr>

        </g:each>
        </tbody>
    </table>
    <br/>
    <div style="text-align: center">
        <g:remoteLink controller="roteiro" action="create" update="new">
            <button class="button" >Adicionar</button>
        </g:remoteLink>
        <img src="${createLinkTo(dir: 'images', file: 'spinner.gif')}" alt="Carregando..." width="16" height="16" id="spinnerAddConnections" style="display: none; text-align: center"/>
        <input type="button" value="Voltar" onclick="window.location = '${createLink(controller: 'roteiro', action: 'index', absolute: 'true')}';">
    </div>
</fieldset>