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
		controller="advertisement" action="index" method="post">
			<label for="q"> Street, Barangay, City, and/or Province </label>
			<g:textField name="q" />
			<g:submitButton name="search" value="Search" />
		</g:form>
	</div>
    <div class="row span8 spaceTop1" role="main">
        <table id="propertyTable" class="span8">
            <tbody>
            <g:each in="${propertyList?.results}" status="i" var="propertyInstance">
                <tr class="clickable-row">
                    <g:hiddenField name="propertyId" value="${propertyInstance.id}"/>
                    <td>
                        <div class="span6">
                            <img class="smallAvatar" src="${g.createLink(controller: 'property', action:'viewMainPicture', params: [id: propertyInstance.id])}" />
                        </div>
                    </td>
                    <td>
                        <table class="bedSpaceDetails">
                            <tr>
                                <td>
                                    <span class="tKey">
                                        Rental Fee
                                    </span>
                                </td>
                                <td>
                                    <span class="property-value tValue">${propertyInstance?.rentalFee}</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="tKey">
                                        Address
                                    </span>
                                </td>
                                <td>
                                    <span class="property-value tValue" aria-labelledby="address-label">${propertyInstance?.address}</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="tKey">
                                        City
                                    </span>
                                </td>
                                <td>
                                    <span class="property-value tValue" aria-labelledby="address-label">${propertyInstance?.city}</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="tKey">
                                        Available On
                                    </span>
                                </td>
                                <td>
                                    <span class="property-value tValue" aria-labelledby="address-label"><g:formatDate format="MMM dd, yyyy" date="${propertyInstance?.nearestEndDate}"/></span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <span class="tKey">
                                        Description
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <span class="tValue">
                                        ${propertyInstance?.description}
                                    </span>
                                </td>
                            </tr>
                        </table>
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

    </body>

</html>
