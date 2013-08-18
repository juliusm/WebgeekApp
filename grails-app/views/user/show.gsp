
<%@ page import="com.webgeekapp.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
        <r:require modules="application"/>
        <r:require modules="bootstrap"/>
        <r:require modules="bootstrap-responsive-css"/>
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="show-user" class="row well" role="main">
			<h1>${userInstance?.username} </h1>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <table class="bedSpaceDetails">
                    <tr>
                        <td>
                            <span class="tKey">
                                Contact Number
                            </span>
                        </td>
                        <td>
                            <span class="property-value tValue">${userInstance?.contactNumber}</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="tKey">
                                Email
                            </span>
                        </td>
                        <td>
                            <span class="property-value tValue" aria-labelledby="address-label">${userInstance?.email}</span>
                        </td>
                    </tr>

                </table>

            <div class="span5">
                <h3>Feedbacks (${userInstance?.reviews.size()})</h3>
                <g:if test="${userInstance.reviews}">
                    <g:render template="/common/reviewList" model="[reviewsInstanceList:userInstance.reviews]"/>

                </g:if>
                <g:else>
                        <g:form class="well span5 pull-left" action="save" controller="post" style="margin-left:100px">
                            <h4>0 feedbacks.</h4>
                        </g:form>
                </g:else>
                <sec:ifNotGranted roles="ROLE_CARETAKER">
                    <span class="pull-right">
                        <g:link class="add btn btn-primary" controller="review" action="create" params="[caretakerId:userInstance?.id]">Add Review</g:link>
                    </span>
                </sec:ifNotGranted>
            </div>
		</div>

	</body>
</html>
