<%@ page import="com.webgeekapp.Tenant" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
        <r:require modules="application"/>
        <r:require modules="bootstrap"/>
        <r:require modules="bootstrap-responsive-css"/>
		<g:set var="entityName" value="${message(code: 'tenant.label', default: 'Tenant')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-tenant" class="row well" role="main">
			<h2>Tenant</h2>
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${tenantInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${tenantInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
                    %{--<g:render template="/contract/form"/>--}%
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
                <g:hiddenField name="propertyId" value="${params.id}" />
			</g:form>
		</div>
	</body>
</html>
