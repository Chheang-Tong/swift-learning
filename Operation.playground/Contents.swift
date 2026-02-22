import Foundation
let myAge=27
let yourAge=20
if myAge > yourAge{
    "I'm older than you."
}else if myAge < yourAge{
    "I'm younger than you."
}else{
    "Ohh, we are the same age!"
}

let myMotherAge = myAge + 30
let doubleMyAge = myAge * 2


/// 1. unary prefix
let foo = !true
/// 2. unary postfix
let name = Optional("Vanda")
var a = type(of: name)
let unaryPostfix = name!
var b = type(of: unaryPostfix)
print(a)
print(b)
/// 3. binary infix
let result = 1 + 2
let names = "Vanda" + " " + "Mann"



///
let age = 30
//let message: String
//if age >= 18 {
//    message = "You are an adult."
//}else{
//    message = "You're not an adult."
//}
let message = age >= 30
? "You are an adult." : "You're not an adult."
