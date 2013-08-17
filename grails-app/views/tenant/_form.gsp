<%@ page import="com.webgeekapp.Tenant" %>


<fieldset class="form">
    <g:render template="/contract/form"/>
</fieldset>

<div class="fieldcontain ${hasErrors(bean: tenantInstance, field: 'validId', 'error')} ">
	<label for="validId">
		<g:message code="tenant.validId.label" default="Valid Id" />
		
	</label>
	<g:textField name="validId" value="${tenantInstance?.validId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tenantInstance, field: 'contactPerson', 'error')} ">
	<label for="contactPerson">
		<g:message code="tenant.contactPerson.label" default="Contact Person" />
		
	</label>
	<g:textField name="contactPerson" value="${tenantInstance?.contactPerson}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tenantInstance, field: 'contactPersonNumber', 'error')} ">
	<label for="contactPersonNumber">
		<g:message code="tenant.contactPersonNumber.label" default="Contact Person Number" />
		
	</label>
	<g:textField name="contactPersonNumber" value="${tenantInstance?.contactPersonNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tenantInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="tenant.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${tenantInstance?.dateOfBirth}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: tenantInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="tenant.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${tenantInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tenantInstance, field: 'homeAddress', 'error')} ">
	<label for="homeAddress">
		<g:message code="tenant.homeAddress.label" default="Home Address" />
		
	</label>
	<g:textField name="homeAddress" value="${tenantInstance?.homeAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tenantInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="tenant.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${tenantInstance?.lastName}"/>
</div>

