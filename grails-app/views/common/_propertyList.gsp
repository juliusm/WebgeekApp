<div class="span6">
    <img class="bigAvatar" src="${g.createLink(controller: 'property', action:'viewMainPicture', params: [id: propertyInstance.id])}" />
</div>

<div>
    <table class="bedSpaceDetails">
    <tr>
        <td>
            <h3><g:link controller="user" action="show" params="[id:propertyInstance.caretakerId]" >${propertyInstance?.caretaker?.username}</g:link> </h3>
        </td>
    </tr>
    <tr>
        <td>
            <h4>Feedback:</h4>
            <p>
                <span class="positiveFeedback"><user:positiveFeedbacks userId="${propertyInstance.caretakerId}"/></span>
                positive feedback/s / <span class="negativeFeedback"><user:negativeFeedbacks userId="${propertyInstance.caretakerId}" /> </span> negative feedback/s
            </p>
        </td>
    </tr>


    %{--<p>--}%

     %{--</p>--}%
    </table>
    <table class="bedSpaceDetails">
        <tr>
            <td>
                <span class="tKey">
                    Contact Number
                </span>
            </td>
            <td>
                <span class="property-value tValue">${propertyInstance?.caretaker?.contactNumber}</span>
            </td>
        </tr>
        <tr>
            <td>
                <span class="tKey">
                    Email
                </span>
            </td>
            <td>
                <span class="property-value tValue" aria-labelledby="address-label">${propertyInstance?.caretaker?.email}</span>
            </td>
        </tr>
        %{--<tr>--}%
            %{--<td>--}%
                %{--<span class="tKey">--}%
                    %{--City--}%
                %{--</span>--}%
            %{--</td>--}%
            %{--<td>--}%
                %{--<span class="property-value tValue" aria-labelledby="address-label">${propertyInstance?.city}</span>--}%
            %{--</td>--}%
        %{--</tr>--}%
        %{--<tr>--}%
            %{--<td colspan="2">--}%
                %{--<span class="tKey">--}%
                    %{--Description--}%
                %{--</span>--}%
            %{--</td>--}%
        %{--</tr>--}%
        %{--<tr>--}%
            %{--<td colspan="2">--}%
                %{--<span class="tValue">--}%
                    %{--${propertyInstance?.description}--}%
                %{--</span>--}%
            %{--</td>--}%
        %{--</tr>--}%
    </table>
</div>

<div>
    <h4>Bedspace Details</h4>
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
                    Available On:
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
</div>




