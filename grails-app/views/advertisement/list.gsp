<%@ page import="com.webgeekapp.Contract" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'contract.label', default: 'Contract')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-contract" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-contract" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    ${propertyList.suggestedQuery}
    <table>
        <thead>
        <tr>
            <th class="sortable"></th>
            <th class="sortable">Title</th>
            <th class="sortable">Location</th>
            <th class="sortable">Description</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${propertyList.results}" status="i" var="propertyInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${propertyInstance.title}</td>
                <td>${propertyInstance.address}</td>
                <td>${propertyInstance.description}</td>
                <td>${propertyInstance?.tenants == null}</td>
            </tr>
        </g:each>
        </tbody>
    </table>

</div>
</body>
</html>
