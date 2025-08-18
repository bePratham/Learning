import Foundation

let x = 10
let y = 20
let z = x * y

func perform<N: Numeric>(
    _ op:(N, N)-> N,
    first lhs: N,
    second rhs: N
) -> N{
    op(lhs, rhs)
}

perform(+, first: 10, second: 20)
perform(*, first: 10.21, second: 22)

protocol CAnRun{
    func run()
}
protocol CAnJump{
    func jump()
}
struct Person: CAnJump, CAnRun{
    func jump(){
        "jumping ..."
    }
    func run() {
        "Running"
    }
}

func jumpAndRun<T: CAnJump & CAnRun>(val: T){
    val.run()
    val.jump()
}
let person = Person()
jumpAndRun(val: person)

let nameList: Array<String> = ["Foo", "Bar"]
//extension [String]̃

var names : [String] = ["Shanu","Banu"]
names.sort()
names.sort(by: >)

extension Array where Element == String{
    func longestString() -> String?{
        self.sorted {(lhs: String, rhs: String) -> Bool in lhs.count > rhs.count}.first
    }
}
[
    "Foo",
    "Vbar vacx",
    "Qux"
].longestString()

