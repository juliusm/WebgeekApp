<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main">
    <r:require modules="application"/>
    <r:require modules="bootstrap"/>
    <r:require modules="bootstrap-responsive-css"/>
    <title><g:message code="webapp.label"/></title>
</head>
    <body>
    <div class="row well">
        <h2>Search for bedspaces near you!</h2>
		<g:form class="well span4 pull-left" style="margin-left:60px"
		controller="advertisement" action="index" method="post">
			<label for="q"> Street, Barangay, City, and/or Province </label>
			<g:textField name="q" />
			<g:submitButton name="search" value="Search" />
		</g:form>

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
                            <div class="span2">
                                <p><b>${propertyInstance.city}</b></p>
                            </div>
                        </td>
                        <td>
                            <div class="span3">
                                <h5>P${propertyInstance.rentalFee} / Month</h5>
                            </div>
                        </td>
                        <td>
                            <div class="span3">
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


        <script type="text/javascript">
            jQuery(document).ready(function($){
                $('.clickable-row').click(function(){
                    var id = $(this).find('#propertyId').val();
                    $('#id').val(id);
                    $('.show-form').submit();
                });
            });
        </script>
        <div id="spinner" class="spinner" style="display:none;"></div>
        <div class="span7">

        </div>
	</div>


    </body>

</html>
