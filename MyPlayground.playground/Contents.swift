//: Playground - noun: a place where people can play

import UIKit

/*
    let someProperty: SomeType = {
        return someValue
    }()
    someValue cùng kiểu với SomeType
*/

class SomeClass {
    let someProperty: Int = {
        return 10
    }()
}

struct Checkerboard {
    let boardColors:[Bool] = {
       var temporaryBoard = [Bool]()
        var isBlack = false
        for i in 1...10 {
            for i in 1...10 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    func squareIsBlackAtRow(row: Int, column: Int) -> Bool {
        return boardColors[(row * 10) + column]
    }
}

let board = Checkerboard()
board.squareIsBlackAtRow(0, column: 1)
board.squareIsBlackAtRow(9, column: 9)