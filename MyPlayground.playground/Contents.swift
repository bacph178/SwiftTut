//: Playground - noun: a place where people can play

import UIKit

let possibleNumber = "123"
// let possibleNumber = "abc"
let convertedNumber = possibleNumber.toInt()

var serverResponseCode: Int? = 404
serverResponseCode
serverResponseCode = nil
serverResponseCode

//không khởi tạo giá trị thì mặc định là nil
var surveyAnswer: String?
surveyAnswer


/*
    Forced Unwrapping bằng cách thêm ! vào sau tên biến khi biết chắc chắn biến 
đã có giá trị, khác nil
*/

if convertedNumber != nil {
    convertedNumber
} else {
    let string = "Không ổn"
}


/*
    Optional Binding
*/

if let actualNumber = possibleNumber.toInt() {
    possibleNumber
    actualNumber
} else {
    possibleNumber
}

/*
    Sự khác biệt
*/

let possibleString: String? = "An optional string."
// let forcedString: String = possibleString        error
//cần có dấu chấm than ở sau tên biến để unwrap optional
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
//let assumedString: String! = nil
/*
    Không cần thiết phải có dấu chấm than vì biến chắc chắn có giá trị
*/
let implicitString: String = assumedString

if assumedString != nil {
    assumedString
} else {
    let string = "Không ổn"
}