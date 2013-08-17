
<%@ page import="com.webgeekapp.Tenant" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tenant.label', default: 'Tenant')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tenant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tenant" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tenant">
			
				<g:if test="${tenantInstance?.contracts}">
				<li class="fieldcontain">
					<span id="contracts-label" class="property-label"><g:message code="tenant.contracts.label" default="Contracts" /></span>
					
						<g:each in="${tenantInstance.contracts}" var="c">
						<span class="property-value" aria-labelledby="contracts-label"><g:link controller="contract" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${tenantInstance?.validId}">
				<li class="fieldcontain">
					<span id="validId-label" class="property-label"><g:message code="tenant.validId.label" default="Valid Id" /></span>
					
						<span class="property-value" aria-labelledby="validId-label"><g:fieldValue bean="${tenantInstance}" field="validId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tenantInstance?.contactPerson}">
				<li class="fieldcontain">
					<span id="contactPerson-label" class="property-label"><g:message code="tenant.contactPerson.label" default="Contact Person" /></span>
					
						<span class="property-value" aria-labelledby="contactPerson-label"><g:fieldValue bean="${tenantInstance}" field="contactPerson"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tenantInstance?.contactPersonNumber}">
				<li class="fieldcontain">
					<span id="contactPersonNumber-label" class="property-label"><g:message code="tenant.contactPersonNumber.label" default="Contact Person Number" /></span>
					
						<span class="property-value" aria-labelledby="contactPersonNumber-label"><g:fieldValue bean="${tenantInstance}" field="contactPersonNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tenantInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="tenant.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${tenantInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tenantInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="tenant.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${tenantInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tenantInstance?.homeAddress}">
				<li class="fieldcontain">
					<span id="homeAddress-label" class="property-label"><g:message code="tenant.homeAddress.label" default="Home Address" /></span>
					
						<span class="property-value" aria-labelledby="homeAddress-label"><g:fieldValue bean="${tenantInstance}" field="homeAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tenantInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="tenant.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${tenantInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tenantInstance?.id}" />
					<g:link class="edit" action="edit" id="${tenantInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>