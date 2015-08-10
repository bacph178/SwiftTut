//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var myVariable = 42
myVariable = 50
let myConstant = 42
let impliciInterger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 4

//converted type
let label = "The width is " //string
let width = 94 //int
let widthLabel = label + String(width)

//another way
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let name = "Hoang Bac"
let greeting = "Hello \(name)"

//Tạo mảng sử dụng []
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1]
shoppingList[1] = "bottle of water"
shoppingList[1]
shoppingList

//Tạo mảng rỗng
let emptyArray = [String]()

//Tạo một dictionary
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations
occupations["Malcolm"]
occupations["Kaylee"]
occupations["Jayne"] = "Public Relations"
occupations

// Tạo một dictionnary rỗng
let emptyDictionary = [String: Float]()

//Khi không biết các kiểu giá trị khởi tạo thì có thể khai báo
shoppingList = []
occupations = [:]

