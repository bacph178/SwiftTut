//: Playground - noun: a place where people can play

import UIKit

class DataImported {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImported()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")

manager.importer.fileName

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x:centerX, y:centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquarecenter = square.center
square.center = Point(x: 15, y: 15)
square.origin.x
square.origin.y

/*
    Biến center được gọi là biến tính toán, nó sẽ được tính toán thông qua các biến
    khác và trả lại giá trị khi được gọi thông qua getter. set lại giá trị thông
    qua setter của biến. Biến tính toán không cần thiết phải lưu trữ lại như cá biến
    thông thường mà thực chất nó chỉ cần dùng để trả lại giá tri để tính toán các biến khác.
*/

/*
    Khi setter của thuộc tính tính toán không được định nghĩ rõ tên thì nó sẽ được mặc định
    là newValue
*/

struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - size.width / 2
            origin.y = newValue.y - size.height / 2
        }
    }
}

/*
    Thuộc tính tính toán chỉ cho phép đọc, có nghĩa là sẽ không có hàm set giá trị 
    cho thuộc tính bằng cách xáo bỏ hàm set và từ khoá get trong cụm ngoặc của thuộc tính
*/

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let fourByFiveTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
fourByFiveTwo.volume
