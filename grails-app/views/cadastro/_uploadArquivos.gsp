<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <p>This is a small modal.</p>
                    <g:form url="[resource:cadastroInstance, action:'update']"  enctype="multipart/form-data" >
                        <g:uploadForm action="upload">
                            <input type="file" name="myFile" />
                            <input type="submit" />
                        </g:uploadForm>
                    </g:form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>




%{--<g:form action="saveArquivo" method="post"  enctype="multipart/form-data">--}%
%{--<div class="dialog">--}%
%{--<table>--}%
%{--<tbody>--}%
%{--<tr class="prop">--}%
%{--<td valign="top" class="name">--}%
%{--<label for="arquivo"><g:message code="cadastro.arquivo.label" default="Arquivo" /></label>--}%
%{--</td>--}%
%{--<td valign="top" class="value ${hasErrors(bean: imageInstance, field: 'arquivo', 'errors')}">--}%
%{--<input type="file" id="arquivo" name="arquivo" />--}%
%{--</td>--}%
%{--</tr>--}%
%{--</tbody>--}%
%{--</table>--}%
%{--</div>--}%
%{--<div class="buttons">--}%
%{--<span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>--}%
%{--</div>--}%
%{--</g:form>--}%