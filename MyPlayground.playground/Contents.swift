//: Playground - noun: a place where people can play

import UIKit

func greet(name: String, day: String)->String {
    return "hello \(name), today is \(day)."
}
greet("Bod", "Tuesday")

/*trả về nhiều giá trị từ một hàm*/

func calculateStatistics(scores: [Int])->(min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])
statistics.max
statistics.min
statistics.sum
statistics.0
statistics.1
statistics.2

/**/
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf()
sumOf(10, 20, 30)

/**/
func averageOf(numbers: Int...) -> Int {
    var sum = 0
    var count = 0
    for number in numbers {
        sum += number
        count++
    }
    if count != 0 {
        return sum / count
    } else {
        return 0
    }
}

averageOf()
averageOf(2)
averageOf(1, 30)

/*
Nested - hàm lồng nhau
*/
func returnFifteen() -> Int{
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

returnFifteen()

/*
    Hàm trả lại hàm khác
*/

func makeIncrementer() -> (Int -> Int) {
    func addOne (number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)

/*
    Hàm lấy tham số truyền vào là một hàm khác
*/

func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

/*
    Closures:
*/

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

numbers.map { (number: Int) -> Int in
    if number > 0 {
        return 0
    } else {
        return 1
    }
}

let mappedNumbers = numbers.map ({ number in 3 * number })
mappedNumbers

let sortedNumbers = sorted(numbers) {$0 > $1}
sortedNumbers