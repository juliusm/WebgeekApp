package com.webgeekapp

class Review {

    String title
    String description
    Date dateCreated
    User reviewer

    static constraints = {
        title(blank: true)
        description(blank: false)
        reviewer(nullable: false)
        dateCreated(nullable: false)
    }
}
