<%@ page import="com.webgeekapp.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'contactNumber', 'error')} ">
	<label for="contactNumber">
		<g:message code="user.contactNumber.label" default="Contact Number" />

	</label>
	<g:textField name="contactNumber" value="${userInstance?.contactNumber}"/>
</div>

<!-- <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'advertisements', 'error')} ">
	<label for="advertisements">
		<g:message code="user.advertisements.label" default="Advertisements" />
		
	</label>
	<g:select name="advertisements" from="${com.webgeekapp.Property.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.advertisements*.id}" class="many-to-many"/>
</div> -->

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<!-- <label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label> -->
	<g:hiddenField name="accountExpired" value="${userInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<!-- <label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>    -->
	<g:hiddenField name="accountLocked" value="${userInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<!-- <label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label> -->
	<g:hiddenField name="enabled" value="${userInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<!-- <label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label> -->
	<g:hiddenField name="passwordExpired" value="${userInstance?.passwordExpired}" />
</div>

