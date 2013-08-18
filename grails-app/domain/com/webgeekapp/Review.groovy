package com.webgeekapp

class Review {

    String title
    String description
    Date dateCreated = new Date()
    User reviewer
    boolean feedback

    static mappedBy = [caretaker: User]

    static constraints = {
        title(blank: true)
        description(blank: false)
        reviewer(nullable: false)
        dateCreated(nullable: false)
    }
}
