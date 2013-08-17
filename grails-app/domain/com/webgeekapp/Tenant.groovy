package com.webgeekapp

class Tenant {

    String firstName
    String lastName
    Date dateOfBirth
    String validId
    String homeAddress
    String contactPerson
    String contactPersonNumber

    static hasMany = [contracts : Contract]
    static belongsTo = [Property]

    static constraints = {
        contracts(nullable: false)
        validId(nullable: true)
        contactPerson(nullable: true)
        contactPersonNumber(nullable: true)
    }
}
