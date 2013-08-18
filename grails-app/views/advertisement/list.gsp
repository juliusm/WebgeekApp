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
    <div>
    <g:form action="list" method="post">
        <label for="q">
            Street, Barangay, City, and/or Province
        </label>
        <g:textField name="q"/>
        <g:submitButton name="search" value="Search"/>
    </g:form>
    </div>
    <div class="row span8 spaceTop1" role="main">
    <table id="propertyTable" class="span8">
        <tbody>
        <g:each in="${propertyList.results}" status="i" var="propertyInstance">
            <tr class="clickable-row">
                <g:hiddenField name="propertyId" value="${propertyInstance.id}"/>
                <td>
                    <div class="span3">
                        <div class="pull-left">
                            <img class="smallAvatar" src="${g.createLink(controller: 'property', action:'viewMainPicture', params: [id: propertyInstance.id])}" />
                        </div>
                        <div class="pull-right">
                            <h5>${propertyInstance.title}</h5>
                            <p>by ${propertyInstance.caretaker.username}</p>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="span4">
                        <h5>P${propertyInstance.rentalFee} / Month</h5>
                    </div>
                </td>
                <td>
                    <div class="span4">
                      Posted <prettytime:display date="${propertyInstance.datePosted}"/>
                    </div>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${params.total}" params="${params}"/>
    </div>
    </div>
    <g:form action="show" method="post" class="show-form">
        <g:hiddenField name="id"/>
    </g:form>

</div>
<script type="text/javascript">
    jQuery(document).ready(function($){
        $('.clickable-row').click(function(){
            var id = $(this).find('#propertyId').val();
            $('#id').val(id);
            $('.show-form').submit();
        });
    });
</script>
</body>
</html>
