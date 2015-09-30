//: Playground - noun: a place where people can play

import UIKit

class Legs {
    var count: Int = 0
}

class Animal {
    var name: String = ""
    var legs: Legs? = Legs()
    
    var upperCaseName: String {
        get {
            return name.uppercaseString
        }
        
        set {
            name = newValue
        }
    }
}

class LegVet {
    internal weak var legs: Legs? = nil
}

let dog = Animal()
dog.name = "Doggy"
dog.legs!.count = 4
dog.upperCaseName
print(dog.name)

let vet = LegVet()
vet.legs = dog.legs
