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
<div id="list-contract" class="content scaffold-list" role="main">
    <h1>Bed Spaces</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form action="list" method="post">
        <label for="q">
            Street, Barangay, City, and/or Province
        </label>
        <g:textField name="q"/>
        <g:submitButton name="search" value="Search"/>
    </g:form>
    
    <table>
        <thead>
        <tr>
            <th class="sortable"></th>
            <th class="sortable">Bed Space</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${propertyList.results}" status="i" var="propertyInstance">
            <tr id="clickable-row">
                <g:hiddenField name="propertyId" value="${propertyInstance.id}"/>
                <td>picture</td>
                <td>
                    <table>
                        <tr>
                            <td colspan="2">${propertyInstance.title}</td>
                        </tr>
                        <tr>
                            <td>Description: </td>
                            <td>${propertyInstance.description}</td>
                        </tr>
                        <tr>
                            <td>Location: </td>
                            <td>${propertyInstance.city}</td>
                        </tr>
                        <tr>
                            <td>Vacancy Date: </td>
                            <td>${propertyInstance.nearestEndDate}</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${propertyList}"  params="${params}"/>
    </div>
</div>
</body>
</html>
