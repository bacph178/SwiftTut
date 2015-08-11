//: Playground - noun: a place where people can play

import UIKit

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

/*
    từ khoá mutating dùng để đánh dấu phương thức được modified bởi structure
    còn class thì không cần thiết
*/
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

/*
sử dụng extension để thêm vào một kiểu có sẵn
*/

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "the number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}

var aInt:Int = 7
aInt.simpleDescription
aInt.adjust()