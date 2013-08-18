<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main">
    <r:require modules="application"/>
    <r:require modules="bootstrap"/>
    <r:require modules="bootstrap-responsive-css"/>
    <title><g:message code="webapp.label"/></title>
</head>
    <body>
        <div class="row well">
            <g:form class="well span5 pull-left" style="margin-left:100px"
            	action="search" controller="advertisement" >
            	<g:textField name="value" />
            	<g:select name="search.type" from="${['City', 'Property']}" value="${type}"/>

            	<g:submitButton name="search" value="Search" />
            </g:form>
        </div>
        <div id="spinner" class="spinner" style="display:none;"></div>
        <div class="span7">

        </div>

    </body>

</html>
