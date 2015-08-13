//: Playground - noun: a place where people can play

import UIKit

/*
    Không giống với phép gán ở các ngôn ngữ khác, Swift có cung cấp phép gán tuple
*/

let (x, y) = (1, 2)
x == 1
y == 2

/*
    Không giống với phép chia dư chỉ được các ngôn ngữ lập trình chia dư cho số nguyên,
    Swift cung cấp phép chia dư cho số thực
*/
// chia dư cho số nguyên giống với các ngôn ngữ lập trình khác
let a = 9 % 4

// Chia dư cho số thực khác với các ngôn ngữ lập trình khác
let b = 8 % 2.5

/* sự khác biệt giữa ++ trước và sau biến */

var a1 = 0
/*
    khi ++ ở trước biến thì giá trị của biến được thay đổi trước sau đó mới thực hiện
    các toán tử sau
*/
let b1 = ++a1
b1 == 1
a1 == 1

/*
    Khi ++ ở sau biến thì giá trị của biến được thay đổi sau khi thực hiện các toán tử 
    có chưa biến
*/
let c1 = a1++
c1 == 1
a1 == 2

/*
    Toán tử 3 ngôi
*/

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

/*
    unwraps biến optional a nếu a chứa giá trị hoặc trả vè giá trị b nếu a nil
*/

var a2: Int? = 3
var b2: Int = 5
var c2: Int? = nil

a2 ?? b2 == a2!
c2 ?? b2 == b2
a2 ?? b2 == (a2 != nil ? a2! :b2)

/*
    (a...b) khoảng giá trị từ a đến b bao gồm cả a và b
*/

for index in 1...5 {
    index
}

/*
    (a..<b) khoảng giá trị từ a đến b bao gồm a không bao gồm b
*/

for index in 1..<5 {
    index
}