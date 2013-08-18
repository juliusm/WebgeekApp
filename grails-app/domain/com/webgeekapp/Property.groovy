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
    Date nearestEndDate

    int maxTenants

    Date datePosted = new Date()
    static hasMany = [reviews: Review, tenants: Tenant]
    static belongsTo = [caretaker: User]
    static transients = ['nearestEndDate']


    static constraints = {
        tenants(nullable: true)
        address(nullable: false)
        city(nullable: false)
        title(blank: false)
        photo(maxSize: 9000000)
    }

    Date getNearestEndDate(){
        def tenants = tenants?.sort{it?.endDate}

        return tenants && tenants.size()>0? tenants.get(0)?.endDate: new Date()
    }

    def isTenantsFull() {
        this.tenants.size() == maxTenants
    }
}
