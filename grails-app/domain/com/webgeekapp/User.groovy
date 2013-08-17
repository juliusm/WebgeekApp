package com.webgeekapp

class User {

    transient springSecurityService

    String username
    String password

    String contactNumber
    String email

    boolean enabled
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    static hasMany = [propertyList : Property]

    static constraints = {
        username blank: false, unique: true
        password blank: false
        email email: true
        properties nullable: true
    }

    static mapping = {
        password column: '`password`'
    }

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role } as Set
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }
}
