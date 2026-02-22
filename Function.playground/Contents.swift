import Foundation
func noArgumentsAndNoReturnValue() {
    "I don't know what you mean."
}
noArgumentsAndNoReturnValue()

func plusTwo(value:Int){
    let newValue = value + 2    
}
plusTwo(value: 30)


func newPlusTwo(value:Int) -> Int{
//    let newValue = value + 2
//    return newValue
    value + 2
}
newPlusTwo(value: 15)

func customAdd(
    value1:Int,
    value2:Int
)->Int{
    value1 + value2
}
customAdd(value1: 15, value2: 15)
let customAdds = customAdd(value1: 10, value2: 15)

func customMinus(
    lhs:Int,
    rhs:Int
) -> Int {
    lhs - rhs
}

let customSubtracts = customMinus(lhs: 10, rhs: 5)

func customMinus2(
    _ lhs:Int,
    _ rhs:Int
) -> Int {
    lhs - rhs
}
let customSubtracts2 = customMinus2(10, 5)
