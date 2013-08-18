package webgeekapp

import com.webgeekapp.User

class ApplicationTagLib {

    def springSecurityService

    static namespace = "user"

    def currentUser = { attrs, body ->
        def loggedUser = springSecurityService.currentUser as User
        out << loggedUser.username
    }

    def positiveFeedbacks = { attrs, body ->
        def user = User.get(attrs.userId)
        def posCount = 0
        def positive = user.reviews.each() {
            if(it.feedback) {
                posCount++;
            }
        }


        out << posCount
    }
    def negativeFeedbacks = { attrs, body ->
        def user = User.get(attrs.userId)
        def negCount = 0
        def negative = user.reviews.each() {
            if(!it.feedback) {
                negCount++;
            }
        }


        out << negCount
    }

}
