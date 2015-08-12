//: Playground - noun: a place where people can play

import UIKit

/*
    Swift cung hầu hết các phép toán giống với C +, -, *, /, %
    Ngoài ra còn có các Overflow Operators không có trong C là bằng cách thêm &
    vào trước các toán tử ta có &+, &-, &*
    Giá trị nhận được sẽ quay vòng trong phạm vi của kiểu dữ liệu
    Ngoài ra Swift cho phép bạn tự định nghĩa các phép toán
*/

var potentialOverflow = UInt16.max
potentialOverflow = potentialOverflow &+ 5
potentialOverflow

var unsignedOverflow = UInt8.min
unsignedOverflow = unsignedOverflow &- 1