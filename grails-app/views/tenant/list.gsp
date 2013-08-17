
<%@ page import="com.webgeekapp.Tenant" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tenant.label', default: 'Tenant')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tenant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tenant" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="validId" title="${message(code: 'tenant.validId.label', default: 'Valid Id')}" />
					
						<g:sortableColumn property="contactPerson" title="${message(code: 'tenant.contactPerson.label', default: 'Contact Person')}" />
					
						<g:sortableColumn property="contactPersonNumber" title="${message(code: 'tenant.contactPersonNumber.label', default: 'Contact Person Number')}" />
					
						<g:sortableColumn property="dateOfBirth" title="${message(code: 'tenant.dateOfBirth.label', default: 'Date Of Birth')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'tenant.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="homeAddress" title="${message(code: 'tenant.homeAddress.label', default: 'Home Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tenantInstanceList}" status="i" var="tenantInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tenantInstance.id}">${fieldValue(bean: tenantInstance, field: "validId")}</g:link></td>
					
						<td>${fieldValue(bean: tenantInstance, field: "contactPerson")}</td>
					
						<td>${fieldValue(bean: tenantInstance, field: "contactPersonNumber")}</td>
					
						<td><g:formatDate date="${tenantInstance.dateOfBirth}" /></td>
					
						<td>${fieldValue(bean: tenantInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: tenantInstance, field: "homeAddress")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${total}" />
			</div>
		</div>
	</body>
</html>
