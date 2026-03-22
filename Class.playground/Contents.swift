import Foundation

class Person {
    var name: String
    var age: Int
    var gender: String
    
    init(name: String, age: Int, gender: String) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    func increaseAge(){
        self.age += 1
    }
}

let foo = Person(name: "foo", age: 10, gender: "male")
foo.age
foo.name
foo.gender
foo.increaseAge()
