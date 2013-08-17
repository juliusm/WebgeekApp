
<%@ page import="com.webgeekapp.Property" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
        <r:require modules="application"/>
        <r:require modules="bootstrap"/>
        <r:require modules="bootstrap-responsive-css"/>
		<g:set var="entityName" value="${message(code: 'property.label', default: 'Property')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-property" class="content scaffold-show" role="main">
			<h1>${propertyInstance.title}</h1>

			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>

			<ol class="property-list property">


                <g:render template="/common/propertyList" model="[propertyInstance:propertyInstance]"/>

                <g:render template="/common/tenantList" model="[propertyInstance:propertyInstance]"/>

			</ol>


			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${propertyInstance?.id}" />
					<g:link class="edit" action="edit" id="${propertyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="add" controller="tenant" action="create" id="${propertyInstance?.id}">Add Tenant</g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
