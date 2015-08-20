//: Playground - noun: a place where people can play

import UIKit

/*
    cấu trúc chung

subscript(index: Int) -> Int {
    get {
        //return an appropriate subscript value
    }
    set {
        //perform a suitable setting action here
    }
}
    có thể viết subscript read-only bằng cách bỏ setter và bỏ từ khoá get như sau:

    subscript(index: Int) -> Int {
        //return an appropriate value subscript value
    }
*/

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
threeTimesTable[1]

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init (rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    
    func indexIsValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            return grid[(row * column) + column]
        }
        set {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            grid[(row * column) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
