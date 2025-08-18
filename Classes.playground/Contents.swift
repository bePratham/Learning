import UIKit

//struct Person{
//    let name: String
//    let age: Int
//}
// It should be var
//var x = Person(name: "P", age: 12)
//x.name="Hle"
//print(x)

class Person{
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func increaseAge(){
        self.age += 1
    }
}

let shanu = Person(name: "Pratham", age: 12)
let foo = Person(name: "Pratham", age: 12)
shanu.increaseAge()
shanu.age = 19
shanu.age
let bar = shanu
bar.increaseAge()
shanu

if(shanu === foo){
    "Yes both are same"
}
else{
    "Noo!!"
}

class Vehicle{
    func goVroom() -> String{
       return "Vroom"
    }
}

class Car: Vehicle{
    
}

let car = Car()
print(car.goVroom())

class Person2{
    private(set) var age:Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge(){
        self.age += 1
    }
}
let baz = Person2(age: 12)
baz.age // now cannot be increase out
bar.increaseAge()
