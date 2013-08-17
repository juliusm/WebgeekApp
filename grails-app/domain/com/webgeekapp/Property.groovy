package com.webgeekapp

class Property {
    //Bed Space

    static searchable = true

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
        address(nullable: false)
        city(nullable: false)
        title(blank: false)
        photo(maxSize: 9000000)
    }

//    Date getNearestEndDate(){
//        return tenants?.sort{it.nearestEndDate}?.get(0)?.nearestEndDate;
//    }

    def isTenantsFull() {
        this.tenants.size() == maxTenants
    }
}
