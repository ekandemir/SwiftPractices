//: Playground - noun: a place where people can play

import Cocoa

var apples = 5
var applePart: Double = 0.5
var appleSentence = "You have \(applePart) of \(apples) apples"

print ("\(appleSentence)")



var students = ["apo", "berk", "kerem"]
var studentSur = [
    students[0] : "Col",
    students[1] : "Turk",
    students[2] : "ala",



    ]
print("Name: \(students[0]) \nSurname : \(String(describing: studentSur[students[0]]))")

let nickName: String? = "kel"
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"


var optionalString: String? = "Hello"
print(optionalString == nil)

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
