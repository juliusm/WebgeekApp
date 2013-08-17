<%@ page import="com.webgeekapp.Property" %>


<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'title', 'error')} required">
	<label for="title">
		Name
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${propertyInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="property.description.label" default="Description" />

    </label>
    <g:textArea name="description" value="${propertyInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="property.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${propertyInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="property.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${propertyInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'maxTenants', 'error')} required">
	<label for="maxTenants">
		<g:message code="property.maxTenants.label" default="Max Tenants" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxTenants" type="number" value="${propertyInstance.maxTenants?: 1}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'photo', 'error')} required">
	<label for="photo">
		<g:message code="property.photo.label" default="Photo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="photo" name="photo" />
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'rentalFee', 'error')} required">
	<label for="rentalFee">
		<g:message code="property.rentalFee.label" default="Rental Fee / Month" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rentalFee" value="${fieldValue(bean: propertyInstance, field: 'rentalFee')}" required=""/>
</div>


%{--Add tenants form--}%
%{--Add contract form--}%