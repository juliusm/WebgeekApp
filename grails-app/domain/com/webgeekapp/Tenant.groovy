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

    Date startDate
    Date endDate
    boolean isActive

    static belongsTo = [Property]

    static constraints = {
        validId(nullable: true)
        contactPerson(nullable: true)
        contactPersonNumber(nullable: true)
        startDate(nullable: false)
        endDate(nullable: false, validator: { val, obj ->
            val > new Date()
        })
    }

}
