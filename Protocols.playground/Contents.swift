import Foundation

protocol CanBreathe{
    func breathe()
}

struct Animal : CanBreathe{
    func breathe() {
    "Animal is breathing ..."
    }
}

let dog = Animal()
dog.breathe()

protocol CanJump{
    func jump()
}

extension CanJump{
    func jump(){
        "Jumping..."
    }
}
struct Cat: CanJump{
    
}
let whiskers = Cat()
whiskers.jump()

protocol HasName {
    var name: String {get}
    var age: Int {get set}
}

struct Dog: HasName{
    var name: String
    var age: Int
}

var woof = Dog(name: "Woof", age: 1)
woof.age += 1
woof.age


extension HasName{
    func describeMe() -> String{
        "Your name is \(name) and you are \(age) years old"
    }
    
    mutating func increaseAge() -> Int{
        self.age += 1
        return age
    }
}
woof.increaseAge()
woof.describeMe()
