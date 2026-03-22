import Foundation

enum Animals {
    case cat
    case rabbit
    case dog
    case m
}
let cat = Animals.cat
cat

if cat == Animals.cat {
    "It's a cat!"
}else if cat == Animals.dog{
    "This is a Dog"
}else{
    "This is Something else"
}

func describeAnimal(_ animal: Animals) -> String {
    switch animal {
    case .cat:
        return "This is a Cat"
    case .rabbit:
        return "This is a Rabbit"
    case .dog:
        return "This is a Dog"
    default:
        return "This is something else"
    }
}

// Example usage
describeAnimal(.m)
/// if enum has 4 items and we use 3 case . we can use default

	

enum Vehicle{
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade:Int)
    var manufacturer: String {
        switch self {
        case let .car(manufacturer, _),
            let .bike(manufacturer, _):
            return manufacturer
        }
    }
}


let car = Vehicle.car(manufacturer: "Tesla", model: "X")
car.manufacturer

let bike = Vehicle.bike(manufacturer: "Honda", yearMade: 2020)
bike.manufacturer


enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue
FamilyMember.brother.rawValue

enum FavoriteEmoji: String, CaseIterable {
    case blush = "😳"
    case rocket = "🚀"
    case fire = "🔥"
}
FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)
FavoriteEmoji.blush
FavoriteEmoji.blush.rawValue

if let blush = FavoriteEmoji(rawValue: "😳"){
    "Found the blush emoji"
    blush
}else {
    "This emoji doesn't exist"
}

if let snow = FavoriteEmoji(rawValue: "❄️") {
    "Found the snow emoji"
    snow
}else {
    "As expected,snow doesn't exist in our enum"
}

enum Height {
    case short, medium, long
    mutating func makeLong(){
        self = Height.long
    }
}

var myHeight = Height .medium
myHeight.makeLong()
myHeight


indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freehand(IntOperation)
    func calculateResult(
        of operation: IntOperation? = nil
    )-> Int{
        switch operation ?? self {
        case let .add(lhs, rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
            return lhs - rhs
        case let .freehand(operation):
            return calculateResult(of: operation)
        }
    
    }
}

let freeHand = IntOperation.freehand(.add(2, 4))
freeHand.calculateResult()
let freeHand2 = IntOperation.freehand(.subtract(4, 2))
freeHand2.calculateResult()

