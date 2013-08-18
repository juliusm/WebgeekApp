package webgeekapp

import com.webgeekapp.User

class ApplicationTagLib {

    def springSecurityService

    static namespace = "user"

    def currentUser = { attrs, body ->
        def loggedUser = springSecurityService.currentUser as User
        out << loggedUser.username
    }

}
