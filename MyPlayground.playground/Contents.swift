//: Playground - noun: a place where people can play

import UIKit

/*
    Continue: Thực hiện thông báo đã làm xong vòng lặp iteration hiện tại, tiếp 
    đến đoạn code sau
*/

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput {
    switch character {
//    case "a", "e", "i", "o", "u", " ":
//        continue
//    default:
//        puzzleOutput.append(character)
    case "g", "r", "t", "m", "n", "d", "s", "h", "k", "l":
        puzzleOutput.append(character)
    default:
        continue
    }
}
puzzleOutput

/*
    break thực hiện dừng vòng lặp hoặc bỏ qua case in câu lệnh switch
*/

/*
    Fallthrough trong switch của Swift thì sau khi match được case nó thực hiện 
    sẽ thoát khỏi câu lệnh switch nhưng thêm Falthrough sau đoạn lệnh được thực 
    hiện trong case được match nó sẽ tiếp tục thực hiện các case sau
*/

let integerToDescribe = 5
var description = "The numver \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5 , 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}

let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08
board[06] = +11
board[09] = +09
board[10] = +02
board[14] = -10
board[19] = -11
board[22] = -02
board[24] = -08
var square = 0
var diceRoll = 0
gameLoop: while square != finalSquare {
    if ++diceRoll == 7 {
        diceRoll = 1
    }
    switch square + diceRoll {
    case finalSquare:
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        continue gameLoop
    default:
        square += diceRoll
        square += board[square]
    }
}
square