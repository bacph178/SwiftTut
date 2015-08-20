//: Playground - noun: a place where people can play

import UIKit

/*
    Các phương thức thì tham số đầu tiên mặc định là local variable
    các biến tiếp theo sẽ mặc định là external parameter
*/

class Counter {
    var count = 0
    func increment () {
        count++
    }
    
    func incrementBy(#amount: Int, _numberOfTimes: Int) {
        count += amount * _numberOfTimes
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.count == 1
counter.incrementBy(amount: 5, _numberOfTimes: 10)
counter.count == 6
counter.reset()
counter.count == 0

/*
    từ khoá self được sử dụng khi có parameter của hàm giống với thuộc tính
    Trong struct các method muốn modify thuộc tính cần có từ khoá mutating trước
*/
struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOfX(x: Double) -> Bool {
        return self.x > x
    }
    mutating func moveByX(deltaX: Double, y detalY: Double) {
        y += detalY
        x += deltaX
    }
}

var somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOfX(1.0) {
    //println OK
}
somePoint.moveByX(2, y: 3)

struct LevelTracker {
    static var highestUnlockedLevel = 1
    static func unlockLevel(level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func levelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    var currentLevel = 1
    mutating func advanceToLevel(level: Int) -> Bool {
        if LevelTracker.levelIsUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func completedLevel(level: Int) {
        LevelTracker.unlockLevel(level + 1)
        tracker.advanceToLevel(level + 1)
    }
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "Lien")
if player.tracker.advanceToLevel(6) {
    player.tracker.currentLevel
} else {
    let string = "level 6 has not yet been unlocked"
}

LevelTracker.highestUnlockedLevel

player.completedLevel(10)
if player.tracker.advanceToLevel(6) {
    player.tracker.currentLevel
} else {
    let string = "level 6 has not yet been unlocked"
}
