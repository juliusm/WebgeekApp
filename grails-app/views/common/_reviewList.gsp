<g:each in="${reviewsInstanceList}" var="reviewInstance">
    <h4>${reviewInstance.title} (${reviewInstance.feedback ? "+" : "-"})</h4>
    <table class="bedSpaceDetails">
        <tr>
            <td>
                <span class="tKey">
                    Description
                </span>
            </td>
            <td>
                <span class="property-value tValue">${reviewInstance?.description}</span>
            </td>
        </tr>
        <tr>
            <td>
                <span class="tKey">
                    Date Posted
                </span>
            </td>
            <td>
                <span class="property-value tValue" aria-labelledby="address-label">${reviewInstance?.dateCreated}</span>
            </td>
        </tr>

    </table>
    <br>
    %{--<g:if test="${reviewInstance?.validId}">--}%
        %{--<li class="fieldcontain">--}%
            %{--<span id="validId-label" class="property-label"><g:message code="tenant.validId.label" default="Valid Id" /></span>--}%

            %{--<span class="property-value" aria-labelledby="validId-label"><g:fieldValue bean="${reviewInstance}" field="validId"/></span>--}%

        %{--</li>--}%
    %{--</g:if>--}%

    %{--<g:if test="${reviewInstance?.contactPerson}">--}%
        %{--<li class="fieldcontain">--}%
            %{--<span id="contactPerson-label" class="property-label"><g:message code="tenant.contactPerson.label" default="Contact Person" /></span>--}%

            %{--<span class="property-value" aria-labelledby="contactPerson-label"><g:fieldValue bean="${reviewInstance}" field="contactPerson"/></span>--}%

        %{--</li>--}%
    %{--</g:if>--}%

    %{--<g:if test="${reviewInstance?.contactPersonNumber}">--}%
        %{--<li class="fieldcontain">--}%
            %{--<span id="contactPersonNumber-label" class="property-label"><g:message code="tenant.contactPersonNumber.label" default="Contact Person Number" /></span>--}%

            %{--<span class="property-value" aria-labelledby="contactPersonNumber-label"><g:fieldValue bean="${reviewInstance}" field="contactPersonNumber"/></span>--}%

        %{--</li>--}%
    %{--</g:if>--}%

    %{--<g:if test="${reviewInstance?.dateOfBirth}">--}%
        %{--<li class="fieldcontain">--}%
            %{--<span id="dateOfBirth-label" class="property-label"><g:message code="tenant.dateOfBirth.label" default="Date Of Birth" /></span>--}%

            %{--<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${reviewInstance?.dateOfBirth}" /></span>--}%

        %{--</li>--}%
    %{--</g:if>--}%

    %{--<g:if test="${reviewInstance?.firstName}">--}%
        %{--<li class="fieldcontain">--}%
            %{--<span id="firstName-label" class="property-label"><g:message code="tenant.firstName.label" default="First Name" /></span>--}%

            %{--<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${reviewInstance}" field="firstName"/></span>--}%

        %{--</li>--}%
    %{--</g:if>--}%

    %{--<g:if test="${reviewInstance?.homeAddress}">--}%
        %{--<li class="fieldcontain">--}%
            %{--<span id="homeAddress-label" class="property-label"><g:message code="tenant.homeAddress.label" default="Home Address" /></span>--}%

            %{--<span class="property-value" aria-labelledby="homeAddress-label"><g:fieldValue bean="${reviewInstance}" field="homeAddress"/></span>--}%

        %{--</li>--}%
    %{--</g:if>--}%

    %{--<g:if test="${reviewInstance?.lastName}">--}%
        %{--<li class="fieldcontain">--}%
            %{--<span id="lastName-label" class="property-label"><g:message code="tenant.lastName.label" default="Last Name" /></span>--}%

            %{--<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${reviewInstance}" field="lastName"/></span>--}%

        %{--</li>--}%
    %{--</g:if>--}%

    %{--<g:render template="/common/contractList" model="[contractInstance:reviewInstance.contract]"/>--}%

</g:each>