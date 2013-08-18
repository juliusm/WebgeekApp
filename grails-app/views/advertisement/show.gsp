<%@ page import="com.webgeekapp.Contract" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <r:require modules="application"/>
    <r:require modules="bootstrap"/>
    <r:require modules="bootstrap-responsive-css"/>
</head>
<body>
<div id="show-contract" class="content scaffold-show" role="main">
    <h1>Bed Space</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list contract">

        <g:if test="${propertyInstance?.title}">
            <li class="fieldcontain">
                <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${propertyInstance}" field="title"/></span>

            </li>
        </g:if>

        <g:if test="${propertyInstance?.description}">
            <li class="fieldcontain">
                <span id="description-label" class="property-label">Description</span>

                <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${propertyInstance}" field="description"/></span>

            </li>
        </g:if>

        <g:if test="${propertyInstance?.city}">
            <li class="fieldcontain">
                <span id="endDate-label" class="property-label">City</span>

                <span class="property-value" aria-labelledby="endDate-label"><g:fieldValue bean="${propertyInstance}" field="city"/></span>

            </li>
        </g:if>

    </ol>

</div>
</body>
</html>
