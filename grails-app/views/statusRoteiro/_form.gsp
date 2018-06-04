



<div class="fieldcontain ${hasErrors(bean: statusRoteiroInstance, field: 'statusRoteiro', 'error')} required">
	<label for="statusRoteiro">
		<g:message code="statusRoteiro.statusRoteiro.label" default="Status Roteiro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="statusRoteiro" required="" value="${statusRoteiroInstance?.statusRoteiro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: statusRoteiroInstance, field: 'roteiro', 'error')} ">
	<label for="roteiro">
		<g:message code="statusRoteiro.roteiro.label" default="Roteiro" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${statusRoteiroInstance?.roteiro?}" var="r">
    <li><g:link controller="roteiro" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="roteiro" action="create" params="['statusRoteiro.id': statusRoteiroInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'roteiro.label', default: 'Roteiro')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: statusRoteiroInstance, field: 'idStatusRoteiro', 'error')} required">
	<label for="idStatusRoteiro">
		<g:message code="statusRoteiro.idStatusRoteiro.label" default="Id Status Roteiro" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idStatusRoteiro" type="number" value="${statusRoteiroInstance.idStatusRoteiro}" required=""/>

</div>

