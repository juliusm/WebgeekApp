
<%@ page import="com.webgeekapp.Property" %>
<!doctype html>
<html>
	<head>
        <meta name="layout" content="main"/>
        <r:require modules="application"/>
        <r:require modules="bootstrap"/>
        <r:require modules="bootstrap-responsive-css"/>
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row span8 spaceTop1" role="main">
			<g:if test="${propertyInstanceList}">
                <h4>My Bedspaces</h4>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <table id="propertyTable" class="span8">
                    <thead>
                    <tr>
                        %{--<g:sortableColumn property="title" title="Photo" />--}%
                        %{--<g:sortableColumn property="title" title="${message(code: 'property.title.label', default: 'Title')}" />--}%
                        %{--<g:sortableColumn property="datePosted" title="${message(code: 'property.datePosted.label', default: 'Date Posted')}" />--}%
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${propertyInstanceList}" status="i" var="propertyInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                            <td>
                                <div class="pull-left" style="width:60px; padding-right: 15px;">

                                    <img class="smallAvatar" src="${g.createLink(controller: 'property', action:'viewMainPicture', params: [id: propertyInstance.id])}" />
                                </div>
                            </td>
                            <td><g:link action="show" id="${propertyInstance.id}">${fieldValue(bean: propertyInstance, field: "title")}</g:link></td>
                            <td>${propertyInstance.tenants.size()}/${propertyInstance.maxTenants} Tenants</td>
                            <td><prettytime:display date="${propertyInstance.datePosted}"/></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
                <g:form>
                    <fieldset class="buttons pull-right">
                        <g:actionSubmit class="add btn btn-primary" action="create" value="Add new bedspace" />
                    </fieldset>
                </g:form>
			</g:if>
            <g:else>
                <g:form class="well span5 pull-left" action="save" controller="post" style="margin-left:100px">
                    <h4>You don't have any bedspaces yet. Click <g:link controller="property" action="create">here </g:link>to add one.</h4>
                </g:form>
            </g:else>
			<div class="pagination">
				<g:paginate total="${propertyInstanceTotal}" />
			</div>

		</div>
        <div id="side" class="span3 pull-right spaceTop1">
            <h4>My Tenants</h4>
            <g:each in="${propertyInstanceList}" var="propertyInstance">
                <g:each in="${propertyInstance?.tenants}" var="tenantInstance">
                <table>
                    <thead>
                    <tr class="tKey">
                        <td>Name</td>
                        <td>Bedspace Rented</td>
                    </tr>

                    </thead>
                    <tr>
                        <td>
                            ${tenantInstance.firstName} ${tenantInstance.lastName}
                        </td>
                        <td>
                            <g:link action="show" id="${propertyInstance.id}">${fieldValue(bean: propertyInstance, field: "title")}</g:link>
                        </td>
                    </tr>
                </table>
                 </g:each>
            </g:each>
        </div>
	</body>
</html>
