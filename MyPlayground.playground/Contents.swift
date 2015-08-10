//: Playground - noun: a place where people can play

import UIKit

/* vòng lặp for - in trong mảng các số nguyên sô lần duyệt là 5*/
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
teamScore

/*vvòng lặp for - in trong mảng các dictionnary Tổng số lần duyệt là 8*/
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest


var times = 0
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    times += 1
}
times

var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
firstForLoop

var optionalString: String? = "Hello"
optionalString == nil

var greeting = "Hello!"
var optionalName: String? = nil
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello"
}

optionalName = "Hoang Bac"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let vegetable = "red pepper"

/* 
chương trình sẽ thực hiện lệnh switch case tương ứng và thoát khỏi câu lệnh switch,
không thực hiện case tiếp theo nên không cần có break ở đây
*/
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "that would make a good tea sandwich."
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup."
}

/*while*/

var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
do {
    m = m * 2
} while m < 100
m
