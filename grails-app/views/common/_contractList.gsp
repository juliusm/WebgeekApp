%{--<h1>Contracts</h1>--}%
%{--<table>--}%
    %{--<thead>--}%
    %{--<tr>--}%
        %{--<g:sortableColumn property="startDate" title="${message(code: 'contract.startDate.label', default: 'Start Date')}" />--}%
        %{--<g:sortableColumn property="endDate" title="${message(code: 'contract.endDate.label', default: 'End Date')}" />--}%
        %{--<g:sortableColumn property="description" title="${message(code: 'contract.description.label', default: 'Description')}" />--}%
        %{--<g:sortableColumn property="rentalFee" title="${message(code: 'contract.rentalFee.label', default: 'Rental Fee')}" />--}%
    %{--</tr>--}%
    %{--</thead>--}%
    %{--<tbody>--}%
    %{--<g:each in="${tenantInstance.contracts}" status="i" var="contractInstance">--}%
        %{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%
            %{--<td><g:formatDate date="${contractInstance.startDate}" /></td>--}%
            %{--<td><g:formatDate date="${contractInstance.endDate}" /></td>--}%
            %{--<td><g:link action="show" id="${contractInstance.id}">${fieldValue(bean: contractInstance, field: "description")}</g:link></td>--}%
            %{--<td>${fieldValue(bean: contractInstance, field: "rentalFee")}</td>--}%
        %{--</tr>--}%
    %{--</g:each>--}%
    %{--</tbody>--}%
%{--</table>--}%