package com.webgeekapp

class Tenant {

    static searchable = true

    String firstName
    String lastName
    Date dateOfBirth
    String validId
    String homeAddress
    String contactPerson
    String contactPersonNumber
    Date nearestEndDate

    static transients = ['nearestEndDate']
    static hasMany = [contracts : Contract]
    static belongsTo = [Property]

    static constraints = {
        contracts(nullable: false)
        validId(nullable: true)
        contactPerson(nullable: true)
        contactPersonNumber(nullable: true)
    }

    Date getNearestEndDate(){
        return contracts?.sort{it.endDate}?.get(0)?.endDate
    }
}
