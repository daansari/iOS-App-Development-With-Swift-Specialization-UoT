//: Playground - noun: a place where people can play

import UIKit

// Optionals
var maybeString: String? = nil

if maybeString != nil {
    maybeString!.characters.count
}

// Optionals Binding
if let definitelyString = maybeString {
    definitelyString.characters.count
}
else {
    print("It's nil")
}

//guard let string = maybeString else { return }

var mostLikelyString: String! = "Hi"

mostLikelyString.characters.count

// Optionals Chaining

class CupHolder {
    var cups:[String]? = nil
}

class Car {
    var cupHolders:CupHolder? = nil
}

let niceCar = Car()
niceCar.cupHolders = CupHolder()
niceCar.cupHolders?.cups = ["Sprite"]
niceCar.cupHolders?.cups?.append("Pepsi")

if var cupHolder = niceCar.cupHolders {
    if var cups = cupHolder.cups {
        cupHolder.cups?.append("Coke")
    }
    else {
        cupHolder.cups = ["Coke"]
    }
}

let firstCup = niceCar.cupHolders?.cups?[1]



