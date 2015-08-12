//: Playground - noun: a place where people can play

import UIKit

let minValue = UInt8.min
let maxValue = UInt8.max
let decimalInteger = 17
let binaryInteger = 0b10001
let octalInterger = 0o21
let hexadecimalInterger = 0x11

// Ép kiểu dữ liệu

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// let pi2 = three + pointOneFourOneFiveNine //
let integerPi = Int(pi)

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// Định nghĩa tên 1 kiểu dữ liệu

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

// Kiểu dữ liệu Boolean

let orangesAreOrange = true
let turnipsAreDelicious = false


if turnipsAreDelicious {
    let string = "Mmm, tasty turnips!"
} else {
    let string = "Eww, turnios are horrible."
}

let i = 1
//if i {} //error
if i == 1 {}


//tuples

//http404Error is of type (Int, String)
let http404Error = (404, "Not Found")
http404Error.0
http404Error.1

let (statusCode, statusMessage) = http404Error
statusCode
statusMessage

let (justTheStatusCode, _) = http404Error
justTheStatusCode

let http200Status = (statusCode: 200, description: "OK")
http200Status.statusCode
http200Status.description