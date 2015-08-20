//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
    }
}

let someValue = Vehicle()
someValue.description

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
bicycle.description

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tanDem = Tandem()
tanDem.hasBasket = true
tanDem.currentNumberOfPassengers = 2
tanDem.currentSpeed = 22
tanDem.description

/*
    Overriding
*/

class  Train: Vehicle {
    override func makeNoise() {
        let noise = "Choo Choo"
    }
}

let train = Train()
train.makeNoise()


/*
    có thể overriding một biết read-only -> read - write nhưng không thể ngược lại
*/

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25
car.gear = 3
car.description

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let automaticCar = AutomaticCar()
automaticCar.currentSpeed = 35
automaticCar.description

/*
    có thể tránh việc overridden bằng cách thêm tiền tố final vào trước tên thuộc tính
    phương thức, hoặc supscript
*/