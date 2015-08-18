//: Playground - noun: a place where people can play

import UIKit

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

/*
    Khi bạn khởi tạo 1 thể hiện của 1 structure và assign cho một hằng số thì không
    thể sửa giá trị của thuộc tính của thể hiện ấy
    Điều này không đúng với 1 class
*/
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
