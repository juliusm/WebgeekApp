<div class="span6">
    <img class="bigAvatar" src="${g.createLink(controller: 'property', action:'viewMainPicture', params: [id: propertyInstance.id])}" />
</div>

<div>
    <h4>Details</h4>
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




