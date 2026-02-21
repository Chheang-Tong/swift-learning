import Foundation

let firstName="Tong"
let lastName="Chheang"
var name = [firstName,lastName];/// if we use let, it can't use name.append. because let is private
//name=["No","Yes"]
name.append("ENea")
name.append("Bby")

let foo="Foo"
var foo2=foo
foo2="Foo 2"
foo
foo2


let moreName = ["Tong","Chheang"];
//moreName.append("Hello")

var copy = moreName
copy.append("ENea")
moreName
copy




let oldArray = NSMutableArray(
    array: ["Tong","Tay","Kosal"]
);
oldArray.add("Srey Noch")
var newArray=oldArray
newArray.add("Someone")
oldArray
newArray


let someNames = NSMutableArray(array: [
    "Dara","Meta"
])
func changeTheArray(_ arrage: NSArray){
    let copy = arrage as! NSMutableArray
    copy.add("Nara")
}
changeTheArray(someNames)
someNames
