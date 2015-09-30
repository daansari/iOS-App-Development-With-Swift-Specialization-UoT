//: Playground - noun: a place where people can play

import UIKit

func performMagic(thingy: String) -> String {
    return thingy
}

performMagic("Test")

let magicFunction = performMagic

magicFunction("Me")

var newMagicFunction = {
    (thingy: String) -> String in
    return thingy
}

var adderFunction: (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    return a + b
}

var b = 3

var adderFunction2: (Int) -> Int = {
    (a: Int) -> Int in
    return a + b
}

newMagicFunction("Tester")

adderFunction(2, 3)

adderFunction2(1)

b = 1

adderFunction2(1)