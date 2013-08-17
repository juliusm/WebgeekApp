<g:if test="${propertyInstance?.address}">
    <li class="fieldcontain">
        <span id="address-label" class="property-label"><g:message code="property.address.label" default="Address" /></span>

        <span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${propertyInstance}" field="address"/></span>

    </li>
</g:if>

<g:if test="${propertyInstance?.city}">
    <li class="fieldcontain">
        <span id="city-label" class="property-label"><g:message code="property.city.label" default="City" /></span>

        <span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${propertyInstance}" field="city"/></span>

    </li>
</g:if>

<g:if test="${propertyInstance?.datePosted}">
    <li class="fieldcontain">
        <span id="datePosted-label" class="property-label"><g:message code="property.datePosted.label" default="Date Posted" /></span>

        <span class="property-value" aria-labelledby="datePosted-label"><g:formatDate date="${propertyInstance?.datePosted}" /></span>

    </li>
</g:if>

<g:if test="${propertyInstance?.description}">
    <li class="fieldcontain">
        <span id="description-label" class="property-label"><g:message code="property.description.label" default="Description" /></span>

        <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${propertyInstance}" field="description"/></span>

    </li>
</g:if>

<g:if test="${propertyInstance?.maxTenants}">
    <li class="fieldcontain">
        <span id="maxTenants-label" class="property-label"><g:message code="property.maxTenants.label" default="Max Tenants" /></span>

        <span class="property-value" aria-labelledby="maxTenants-label"><g:fieldValue bean="${propertyInstance}" field="maxTenants"/></span>

    </li>
</g:if>

<g:if test="${propertyInstance?.photo}">
    <li class="fieldcontain">
        <span id="photo-label" class="property-label"><g:message code="property.photo.label" default="Photo" /></span>

    </li>
</g:if>

<g:if test="${propertyInstance?.rentalFee}">
    <li class="fieldcontain">
        <span id="rentalFee-label" class="property-label"><g:message code="property.rentalFee.label" default="Rental Fee" /></span>

        <span class="property-value" aria-labelledby="rentalFee-label"><g:fieldValue bean="${propertyInstance}" field="rentalFee"/></span>

    </li>
</g:if>

<g:if test="${propertyInstance?.reviews}">
    <li class="fieldcontain">
        <span id="reviews-label" class="property-label"><g:message code="property.reviews.label" default="Reviews" /></span>

        <g:each in="${propertyInstance.reviews}" var="r">
            <span class="property-value" aria-labelledby="reviews-label"><g:link controller="review" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
        </g:each>

    </li>
</g:if>