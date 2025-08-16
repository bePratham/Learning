import UIKit

struct Person{
    let name: String;
    let age: Int
}
let foo = Person(name: "foo", age: 9)

struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String{
        "\(firstName) \(lastName) "
    }
}
struct Person0 {
    let firstName: String
    let lastName: String
    let fullName: String
    init(firstName: String, lastName: String){
            self.firstName = firstName
            self.lastName = lastName
            self.fullName = "\(firstName) \(lastName)"
            
        }
}
let n = Person0(firstName: "shanu", lastName: "singh")
