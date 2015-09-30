//: Playground - noun: a place where people can play

import UIKit

var a = 3
var b = a

b = 5

a

class number {
    var n: Int
    var m: Int
    init(n: Int, m: Int) {
        self.n = n
        self.m = m
    }
}

var aNumber = number(n: 3, m: 6)
var bNumber = aNumber

bNumber.n = 5
aNumber.n

bNumber.m = 10
aNumber.m

struct valueNumber {
    var n: Int
    init(n: Int) {
        self.n = n
    }
}

var aNum = valueNumber(n: 4)
var bNum = aNum

bNum.n = 10

bNum.n
aNum.n