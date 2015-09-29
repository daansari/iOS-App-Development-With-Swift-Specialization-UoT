//: Playground - noun: a place where people can play

import UIKit

// Constant
let constantString = "Hi"

// Variable
var str = "Hello, playground"

print(constantString)
print(str)

// Optional
// Variables cannot be nil
var optionalStr: String? = "Hello"
optionalStr = nil

// Simple Control Flow
//var counter = 0
for counter in 0..<10 {
    guard counter != 2 else { continue }
    if counter != 5 {
        print(counter)
    }
}

// Arrays
var animals = ["chickens", "cows", "ducks"]
animals[1] = "geese"
animals


// Hash --> Maps, Dictionary, KeyValuePairs
var deliciousness = [
    "chickens": "somewhat cute",
    "ducks": "cute",
    "geese": "scary"
]

deliciousness["ducks"]

// Traversing Arrays and Hashes
for animal in animals {
    animal
    deliciousness[animal]
}

// Functions
func indexOfSpecies(species: String, weight: Int = 0) -> Int {
    switch species {
    case "duck":
        return 0+weight
    case "human":
        return 100+weight
    default:
        return -100+weight
    }
}

indexOfSpecies("duck", weight: 10)
indexOfSpecies("human", weight: 70)
indexOfSpecies("cow", weight: 95)

// 2D Arrays
// Image is a collection of pixels a matrix of numbers

var beautifulImage = [
    [3, 15, 3],
    [26, 3, 4, 8, 2],
    [14, 8, 22]
]

func raiseLowerNumbers(inout inImage image:[[Int]], to number: Int) {
    for i in 0..<image.count {
        for j in 0..<image[i].count {
            if image[i][j] < number {
                image[i][j] = number
            }
        }
    }
}

raiseLowerNumbers(inImage: &beautifulImage, to: 15)

let array = [1,2,3,4]
let array1 = [1,2,2.5,3]
let array3: [Int] = []
let array4 = [Int]()

