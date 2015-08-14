//: Playground - noun: a place where people can play

import UIKit

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backwards (s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = sorted(names, backwards)
var anotherReversed = sorted(names)

/*
    Closure expression syntax
*/

reversed = sorted(names, {(s1: String, s2: String) -> Bool in
    return s1 < s2
})
reversed
reversed = sorted(names, {s1, s2 in return s1 < s2})
reversed

let digitNames = [0: "Zero", 1:"One", 2:"Two", 3:"Three", 4:"Four", 5:"Five",
    6:"Six", 7:"Seven", 8:"Eight", 9:"Nine"]
let numbers = [16, 58, 510]
let strings = numbers.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}

/*
    Capture Values
    ở đây biến runningTotal đã được tham chiếu và lưu lại ở mỗi lần gọi
*/
func makeIncrementer(forIncrement amount:Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen() == 10
incrementByTen() == 20
incrementByTen() == 30
/*
    ngay cả khi tạo một hàm khác thì biến runningTotal của hàm ỉnementByTen cũng
    được lưu lại và biến runningTotal của hàm incrementBySeven được khởi tạo và
    tham chiếu đến một nơi khác
*/
let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven() == 7
incrementByTen() == 40
incrementBySeven() == 14

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen() == 50