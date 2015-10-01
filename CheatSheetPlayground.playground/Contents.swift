//: Playground - noun: a place where people can play

import UIKit

// Classes
class SuperNumber: NSNumber {
    override func getValue(value: UnsafeMutablePointer<Void>) {
        super.getValue(value)
    }
}

// Extensions (Categories)
extension NSNumber {
    func superCoolGetter() -> Int {
        return 5
    }
}

let n = NSNumber(int: 4)
n.superCoolGetter()

// Protocols
protocol dancable {
    func dance()
}

class Person: dancable {
    func dance() {
        
    }
}

// Enums
enum TypesOfVeggies : String {
    case Carrots
    case Tomatoes
    case Celery
}

let carrot = TypesOfVeggies.Carrots
carrot.rawValue

func eatVeggies(veggie: TypesOfVeggies) {
    print(veggie)
}

let randomVeggie = TypesOfVeggies(rawValue: "Carrot")
eatVeggies(TypesOfVeggies.Carrots)

// Class
class Car {
    var cupHolder: String?
    
    required init(cupHolder: String) {
        self.cupHolder = cupHolder
    }
    
    convenience init() {
        self.init(cupHolder: "Cool")
    }
    
    deinit {
        self.cupHolder = nil
    }
}

let car = Car(cupHolder: "Two")
car.cupHolder

let newCar = Car()

// Generics
var array = Array<Int>()

// Operator functions
