
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

    <div class="pull-right">
        <g:link class="edit btn btn-primary" action="list">Back</g:link>
    </div>
</div>
</body>
</html>
