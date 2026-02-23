import Foundation

struct Person{
    let name:String
    let age:Int
}
let foo = Person(name: "Foo", age: 20)
foo.name
foo.age

struct CommodoreComputer{
    let name:String
    let manufacturer:String
    init(name: String, manufacturer: String) {
        self.name = name
        self.manufacturer = manufacturer
    }
}
let c64 = CommodoreComputer(name: "C64", manufacturer: "Manufacturer")
c64.name
c64.manufacturer

struct Person2{
    let firstName:String
    let lastName:String
    var fullName: String { "\(firstName) \(lastName)" }
}

let fooBar = Person2(firstName: "Foo", lastName: "Bar")
fooBar.fullName


struct Car{
    var currentSpeed: Int
    mutating func drive(speed:Int){
        "Driving..."
        currentSpeed = speed
    }
}
let  immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 20)
var mutableCar = Car(currentSpeed: 10)
let copy = mutableCar
mutableCar.drive(speed: 20)
mutableCar.currentSpeed
copy.currentSpeed

