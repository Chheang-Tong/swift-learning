import Foundation

//func add(_ lhs: Int,_ rhs: Int)->Int{
//    lhs + rhs
//}

let add:(Int,Int)->Int = {(lhs:Int, rhs:Int)->Int in lhs + rhs}

add(20,30)


func customAdd(_ lhs: Int,_ rhs: Int, using function:(Int,Int)->Int)->Int{
    function(lhs, rhs)
}

customAdd(20,39, using: {(lhs:Int, rhs:Int)->Int in lhs + rhs})
customAdd(30, 30){
    (lhs:Int, rhs:Int)->Int in lhs + rhs
}
customAdd(30, 30){$0+$1}

let ages = [20,4,30,8,10]
ages.sorted(by: {(lhs: Int, rhs: Int)-> Bool in lhs < rhs})
ages.sorted(by: >)
ages.sorted(by: <)

func customAdd2(
    using function: (Int, Int) -> Int,
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    function(lhs,rhs)
}

customAdd2(using: {(lhs,rhs) in lhs+rhs}, 20, 30)
customAdd2(using: {(lhs,rhs) in lhs+rhs+10}, 20, 30)
customAdd2(using: {$0+$1+10}, 20, 30)

func add10To(_ Value:Int)->Int{
    Value+10
}
add10To(10)

func doAddition(
    on Value:Int,
    using function:(Int)-> Int
)->Int{
    return function(Value)
}

doAddition(on: 20){(Value) in Value+30}

doAddition(on: 20, using: add10To(_:))
