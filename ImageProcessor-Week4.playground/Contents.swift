//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample")!

// Process the image!
let rgbaImage = RGBAImage(image: image)!

let x = 12
let y = 2

let index = y * rgbaImage.width + x

var pixel = rgbaImage.pixels[index]

// Change single pixel color
//pixel.red
//pixel.blue
//pixel.green
//
//pixel.red = 255
//pixel.blue = 0
//pixel.green = 0
//
//rgbaImage.pixels[index] = pixel


// Calculate Contrast
var totalRed: Int = 0
var totalGreen: Int = 0
var totalBlue: Int = 0

// Calculate number of Red, Green and Blue Pixels across Image
//for y in 0..<rgbaImage.height {
//    for x in 0..<rgbaImage.width {
//        let index = y * rgbaImage.width + x
//        let pixel = rgbaImage.pixels[index]
//        
//        totalRed += Int(pixel.red)
//        totalGreen += Int(pixel.green)
//        totalBlue += Int(pixel.blue)
//    }
//}

// Calculate average Red, Green and Blue Pixels
//let pixelCount = rgbaImage.width * rgbaImage.height
//let avgRed = totalRed / pixelCount
//let avgGreen = totalGreen / pixelCount
//let avgBlue = totalBlue / pixelCount

let avgRed = 118
let avgGreen = 98
let avgBlue = 83
let sum = avgRed + avgGreen + avgBlue

for y in 0..<rgbaImage.height {
    for x in 0..<rgbaImage.width {
        let index = y * rgbaImage.width + x
        
        var pixel = rgbaImage.pixels[index]
        
        let redDelta = Int(pixel.red) - avgRed
        let greenDelta = Int(pixel.green) - avgGreen
        let blueDelta = Int(pixel.blue) - avgBlue
        
        var modifier = 2
        
        // Smart Contrast
//        if (Int(pixel.red) + Int(pixel.green) + Int(pixel.blue) < sum) {
//            modifier = 1
//        }
        
        // Contrast is pixel red is less that avgRed
        if (Int(pixel.red) < avgRed) {
            modifier = 1
        }
        
        pixel.red = UInt8(max(min(255, avgRed + modifier * redDelta), 0))
//        pixel.green = UInt8(max(min(255, avgGreen + modifier * greenDelta), 0))
//        pixel.blue = UInt8(max(min(255, avgBlue + modifier * blueDelta), 0))
        rgbaImage.pixels[index] = pixel
    }
}

image
let newImage = rgbaImage.toUIImage()

