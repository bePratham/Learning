import Foundation

struct Person{
    let FirstName: String
    let SecondName: String
}

extension Person{
    init(fullName: String){
        let components = fullName.components(separatedBy: " ")
        self.init(FirstName: components.first ?? fullName,
                  SecondName: components.last ?? fullName)
    }
}

let p2 = Person(fullName: "Prath Singh")
p2.FirstName

protocol GoesVrom{
    var vroomValue : String {get}
     func goVroom()->String
}

extension GoesVrom{
    func goVroom()->String{
        "\(self.vroomValue) goes vroom!!!"
    }
}
struct Car{
    let manufature: String
    let model: String
}

let modelX = Car(manufature: "TEstla", model: "X")

extension Car: GoesVrom{
    var vroomValue: String {
            "\(self.manufature) model \(self.model)"
    }
}

modelX.goVroom()

class MyDouble{
    var value: Double
    init(value: Double) {
        self.value = value
    }
}
extension MyDouble{
    convenience init(){
        self.init(value: 0)
    }
}
let myDoubt = MyDouble()
myDoubt.value

extension GoesVrom{
    func goVroomWithValue()->String{
        "going with \(self.vroomValue)"
    }
}
modelX.goVroomWithValue()
