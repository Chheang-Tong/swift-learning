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
