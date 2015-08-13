//: Playground - noun: a place where people can play

import UIKit

/*
    Multiple matches for a single switch case
*/

let anotherCharracter: Character = "a"
switch anotherCharracter {
    case "a", "A":
        let a = "OK"
    default:
        let b = "not Ok"
}

/*
    Interval Matching
*/

let count = 3_000_000_000_000
let countedThings = "stars in the Milky Way"
var naturalCount: String
switch count {
case 0:
    naturalCount = "no"
case 1...3:
    naturalCount = "a few"
case 4...9:
    naturalCount = "several"
case 10...99:
    naturalCount = "tens of"
case 100...999:
    naturalCount = "hundreds of"
case 1000...999_999:
    naturalCount = "thousands of"
default:
    naturalCount = "millions and millions of"
}

/*
    sử dụng tuples để kiểm tra nhiều giá trị trong switch, ở đây dấu _ được sử
    sử dụng nếu chúng ta không cần sử dụng nó trong đoạn code thực thi, nếu cần 
    sử dụng thì ta có thể khai báo biến hoăc hằng thay cho dấu _
*/

let somePoint = (1, 1)
var testString: String
switch somePoint {
case (0, 0):
    testString = "là gốc toạ độ"
case (_, 0):
    testString = "nằm trên tục x"
case (0, _):
    testString = "nằm trên trục y"
case(-2...2, -2...2):
    testString = "nằm trong cái hộp"
default:
    testString = "khoong nam trong cai hop"
}

let anotherPoint = (5, 7)
switch anotherPoint {
case (let x, 0):
    x
case (0, let y):
    y
case let (x, y):
    (x, y)
}

/*
    có thể sử dụng where để thêm điều kiện vào câu lệnh
*/

let yetAnotherPoint = (1, 5)
switch yetAnotherPoint {
case let (x, y) where x == y:
    (x, y)
case let (x, y) where x == -y:
    (x, y)
case let (x, y):
    (x, y)
}
