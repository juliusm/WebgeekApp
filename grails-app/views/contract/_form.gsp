<%@ page import="com.webgeekapp.Contract" %>



<div class="fieldcontain ${hasErrors(bean: contractInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="contract.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${contractInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contractInstance, field: 'startDate', 'error')} required">
    <label for="startDate">
        <g:message code="contract.startDate.label" default="Start Date" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="startDate" precision="day"  value="${contractInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: contractInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="contract.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${contractInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: contractInstance, field: 'rentalFee', 'error')} required">
	<label for="rentalFee">
		<g:message code="contract.rentalFee.label" default="Rental Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rentalFee" value="${fieldValue(bean: contractInstance, field: 'rentalFee')}" required=""/>
</div>


