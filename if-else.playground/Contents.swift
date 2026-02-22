import Foundation

let myName = "Vanda"
let myAge = 27
let yourName = "Mann"
let yourAge = 24

myName == "Vanda"
    ? "Your Name is \(myName)"
    : "Your Name is \(yourName)"

myName == "Foo"
    ? "Your Name is \(myName)"
        : myName == "Foo"
            ?"Foo"
                : "Your Name is \(yourName)"
if myName == "Foo" {
    "Your Name is \(myName)"
}else if myName == "Vanda" {
    "Are u Foo"
}else{
    "Ok u win"
}

myName == "Vanda" && myAge == 30
    ? "Name is Vanda and age is 30"
    : myAge == 27
        ? "Name is Vanda and age is 27"
        : "Name is not Vanda"


myAge == 27||myName == "Foo"
? "Name is Foo or age is 27"
: myAge == 29 || myName == "Vanda"
? "Name is Vanda or age is 27"
: "Name is not Vanda"


myName == "Vanda"
&& myAge == 22
&& yourName == "Foo"
|| yourAge == 24
? "Name is Vanda and age is 22 and your name is Foo or your age is 19"
: ""

(myName=="Vanda" && myAge == 20) && ( yourName == "Foo" && yourAge == 24)
? "My name is Vanda and I'm 20... AND... your name is Foo or your age is 19"
: "Hmm, that didn't work well..."
