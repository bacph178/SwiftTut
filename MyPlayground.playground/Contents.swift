//: Playground - noun: a place where people can play

import UIKit

/*
    giá trị trả về của funtion là tuple có thể bị nil nên dùng giá trị optional Tuple
*/

func minMax(array:[Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
minMax([]) == nil
minMax([5, 3, 4, 2])

/*
    thêm dấu # vào trước tên tham số để khi gọi hàm tên tham số được xuất hiện
*/

func containsCharacter(string: String, characterToFind: Character)->Bool {
    for character in string {
        if character == characterToFind {
            return true
        }
    }
    return false
}
containsCharacter("Hoang Bac", "H")

func containsCharacter1(#string: String, #characterToFind: Character)->Bool {
    for character in string {
        if character == characterToFind {
            return true
        }
    }
    return false
}

containsCharacter1(string: "Hoang Bac", characterToFind: "H")

/*
    tham số mặc định, nếu tham số không được truyền vào thì nó sẽ lấy tham số mặc định
*/

func join(string s1:String, toString s2:String, withJoiner joiner:String = " ") -> String {
    return s1 + joiner + s2
}

join(string: "Hello", toString: "Hoang Bac")
join(string: "Bac", toString: "Lien", withJoiner: " yeu ")

/*

*/

func arithmeticMean(numbers: Double...) ->Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)
arithmeticMean()

func anotherarithmeticMean(numbers:[Double]) ->Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
anotherarithmeticMean([1, 2, 3, 4, 5])
anotherarithmeticMean([3, 8.25, 18.75])
anotherarithmeticMean([])
/*
    Định nghĩa biến trong tham số truyền vào, tiết kiệm bộ nhớ
*/

func alignRight(var string:String, count:Int, pad: Character) -> String {
    let amountToPad = count - distance(string.startIndex, string.endIndex)
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string = padString + string
    }
    return string
}

let originalString = "hello"
let paddedString = alignRight(originalString, 10, "-")

/*
    tham số inout giống với tham biến trong C, giá trị của biến thay đổi sau khi
    gọi hàm
*/

func swapTwoInts(inout a:Int, inout b:Int) {
    let temp = a
    a = b
    b = temp
}

var someInt = 3
var anotherInt = 5
swapTwoInts(&someInt, &anotherInt)
someInt == 5
anotherInt == 3

/*
    Hàm trả về một hàm khác, việc trả về một hàm có thể là cách chúng ta che giấu
    phần thân hàm, hay ý nghĩ của hàm chỉ cung cấp api hợp lý
*/

func stepForward(input: Int) -> Int {
    return input + 1
}

func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFuntion(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFuntion(currentValue > 0)
while currentValue != 0 {
    currentValue = moveNearerToZero(currentValue)
}

/*
    Nested khai báo và hiện thực các hàm trong 1 hàm lớn
*/
