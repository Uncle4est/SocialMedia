//
//  Profile.swift
//  SocialMedia
//
//  Created by Nicholas Smith on 10/5/22.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getProfile() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let occupation: String
    let info: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Jeniffer",
            surname: "Aniston",
            occupation: "Actress",
            info: "Jennifer Joanna Aniston (born February 11, 1969) is an American actress and producer. She is the recipient of various accolades, including a Primetime Emmy Award, a Golden Globe Award and two Screen Actors Guild Awards, in addition to a nomination for a Critics’ Choice Award. Since her career progressed in the 1990s, she has become one of the world's highest-paid actresses."
        )
    }
}
