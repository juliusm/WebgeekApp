package com.webgeekapp

class Property {
    //Bed Space

    String title
    String description
    BigDecimal rentalFee
    String address
    String city
    byte[] photo

    int maxTenants

    Date datePosted = new Date()
    static hasMany = [reviews: Review, tenants: Tenant]


    static constraints = {
        tenants(nullable: true)
        title(blank: false)
        photo(maxSize: 100000)
    }
}
