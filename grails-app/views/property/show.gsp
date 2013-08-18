
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
		<div class="row well" role="main">
			<h2>${propertyInstance.title}</h2>

            <div class="row">
                <g:render template="/common/propertyList" model="[propertyInstance:propertyInstance]"/>
            </div>
            <div class="span12">
                <div class="span5">
                    <h3>Tenants(${propertyInstance.tenants.size()}/${propertyInstance.maxTenants})</h3>
                    <g:if test="${propertyInstance.tenants}">
                        <g:render template="/common/tenantList" model="[propertyInstance:propertyInstance]"/>
                        <span class="pull-right">
                            <g:if test="${!propertyInstance.isTenantsFull()}">
                                <g:link class="add btn btn-primary" controller="tenant" action="create" id="${propertyInstance?.id}">Add Tenant</g:link>
                            </g:if>
                        </span>
                    </g:if>
                    <g:else>

                        <g:form class="well span5 pull-left" action="save" controller="post" style="margin-left:100px">
                            <g:hiddenField name="id" value="${propertyInstance?.id}" />
                            <h4>You don't have any tenants yet. Click <g:link class="add" controller="tenant" action="create" id="${propertyInstance?.id}">here </g:link>to add one</h4>
                        </g:form>
                    </g:else>
                </div>
            </div>
            <div class="pull-right">
                %{--<g:hiddenField name="id" value="${propertyInstance?.id}" />--}%
                <g:link class="edit btn btn-primary" action="edit" id="${propertyInstance?.id}">Edit bedspace details</g:link>
                %{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%

            </div>
		</div>
	</body>
</html>
