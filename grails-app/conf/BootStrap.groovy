import com.webgeekapp.Role
import com.webgeekapp.User
import com.webgeekapp.UserRole

class BootStrap {

    def init = { servletContext ->

        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
        def careTakerRole = Role.findByAuthority('ROLE_CARETAKER') ?: new Role(authority: 'ROLE_CARETAKER').save(failOnError: true)
        def james
        def caretaker
        if (!(james = User.findByUsername('james'))) {

            james = new User(username: "james", email: "james@gmail.com", password: "james", enabled: true, contactNumber: "0912312")
            james.save(failOnError: true)
        }

        if (!(caretaker = User.findByUsername('caretaker'))) {

            caretaker = new User(username: "caretaker", email: "podferio@gmail.com", password: "caretaker", enabled: true, contactNumber: "90810293")
            caretaker.save(failOnError: true)
        }

        UserRole.create(james , userRole , true)
        UserRole.create(caretaker , careTakerRole , true)

    }
    def destroy = {
    }
}
