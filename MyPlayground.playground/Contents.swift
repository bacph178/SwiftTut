//: Playground - noun: a place where people can play

import UIKit

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name:String?
}

enum CompassPoint {
    case North, South, East, West
}

/*
    Structures and Enumerations Are Value Types
    khi thay đổi giá trị của cinema thì không ảnh hưởng tới hd
*/

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width == hd.width
cinema.width = 2048
cinema.width != hd.width


/*
    khi giá trị của curentDirection thay đổi thì remebered không đổi
*/
var currentDirection = CompassPoint.West
let remeberedDirection = currentDirection
currentDirection = .East
remeberedDirection == .West

/*
    Classes Are Reference Types
    Khi một thể hiện được tạo ra là tenEighty được tạo ra sau đó ta tạo ra một hằng
    số được gán bằng tenEighty thì nếu hằng đó thay đổi giá trị thì giá trị tương ứng
    của tenEighty cũng thay đổi tương ứng
    Ở đây cả tenEighty vaf alsoTenEighty đều tham chiếu tới một thể hiện của VideoMode
    thế nên 1 trong 2 cái thay đổi giá trị thì thực chất là thể hiện của VideoMode đã
    thay đổi giá trị, còn 2 hằng số kia chỉ tham chiếu tới thể hiện ấy
*/

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
tenEighty.frameRate == 30.0

/*
    === kiểm tra xem 2 biến có cùng tham chiếu tới 1 thể hiện không
    !== ngược với cái trên
*/

alsoTenEighty === tenEighty

/*
    sử dụng struct ở một trong những trường hợp sau:
    - mục đích chính của structure là đóng goi một vài giá trị dữ liệu đơn giản
    - giá trị được đóng gói sẽ được copy hơn là tham chiếu khi được gán hoặc truyền qua 1 thể hiện của structure
    - các thuộc tính được lưu trữ bởi structure là chính bản thân nó cũng mong đợi là được copy hơn là tham chiếu
    - Structure không cần kế thừa thuộc tính hoặc phương thức của một kiểu tồn tại khác
    - một số ví dụ nên dùng là :
        + kích thước của một hình hình học bao gồm height, width cả 2 đều kiểu Double
        + một tham chiếu đên phạm vi của một series bao gồm start, length cả 2 đều kiểu Int
        + điểm trong không gian 3D gồm 3 thuộc tính x, y, và z đều là Double
*/