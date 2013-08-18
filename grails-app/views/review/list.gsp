
<%@ page import="com.webgeekapp.Review" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-review" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'review.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'review.description.label', default: 'Description')}" />
					
						<th><g:message code="review.reviewer.label" default="Reviewer" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'review.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="feedback" title="${message(code: 'review.feedback.label', default: 'Feedback')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reviewInstanceList}" status="i" var="reviewInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reviewInstance.id}">${fieldValue(bean: reviewInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: reviewInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "reviewer")}</td>
					
						<td><g:formatDate date="${reviewInstance.dateCreated}" /></td>
					
						<td><g:formatBoolean boolean="${reviewInstance.feedback}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reviewInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
