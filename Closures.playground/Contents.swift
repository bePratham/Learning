import Foundation

// Add _ so that no need to define variable names
func add(_ a: Int,_ b: Int) -> Int{
    a+b
}
print(add( 4, 6))

// need to define variable names
func addWithNames(a: Int,b: Int) -> Int{
    a+b
}
print(addWithNames( a: 4,b: 6))

func doSomethinComplicated( with value: Int){
    func mainLogic(value: Int) -> Int{
        value+2
    }
//    return mainLogic(value: value + 1)
    mainLogic(value: value + 1)
}

doSomethinComplicated(with: 10)


let addName: (Int,Int) -> Int = {
    ( lhs : Int,rhs : Int) -> Int in
    lhs + rhs
}
 
addName(20,30)
 
func customAdd(
    _ lhs: Int,
    _ rhs:Int,
    using function :(Int, Int) -> Int
    ) -> Int {
    function(lhs, rhs)
}

customAdd(10, 20, using: {
    (lhs: Int, rhs: Int) -> Int in
    lhs+rhs
})

customAdd(10, 20)
{(lhs, rhs) in lhs+rhs }


let ages = [30,21,24,3]

ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in lhs < rhs})

ages.sorted(by: <)
ages.sorted(by: >)
//ages.sort() only available in var

