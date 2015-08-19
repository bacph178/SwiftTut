//: Playground - noun: a place where people can play

import UIKit

/*
    biến class static
*/

struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 10
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 10
    }
}

class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 10
    }
    class var overrideableComputedTypeProperty: Int {
        return 20
    }
}

SomeStructure.storedTypeProperty
SomeStructure.computedTypeProperty
SomeEnumeration.storedTypeProperty
SomeEnumeration.computedTypeProperty
SomeClass.storedTypeProperty
SomeClass.computedTypeProperty
SomeClass.overrideableComputedTypeProperty

struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputForallChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputForallChannels {
                AudioChannel.maxInputForallChannels = currentLevel
            }
        }
    }
}
