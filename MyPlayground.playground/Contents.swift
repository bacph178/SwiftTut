//: Playground - noun: a place where people can play

import UIKit

/*
    Initializers
        init() {
            //perform some initialization here
        }
*/

struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}

var f = Fahrenheit()
f.temperature

/*
    hàm dựng init thường có external parameter mặc định không cần có dấu # đằng
    trước tên parameter, nếu không muốn external parameter thì chỉ cần thêm vào
    trước tên parameter bằng dấu _
*/
struct Celsius {
    var temperatureCelsius: Double
    init(fromFahrenheit fahrenheit:Double) {
        temperatureCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureCelsius = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
        temperatureCelsius = celsius
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
let bodyTemperature = Celsius(37.0)
struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)

class SurveyQuestion {
    var text: String
    var response: String?
    init (text: String) {
        self.text = text
    }
    func ask() -> String {
        return text
    }
}

let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
cheeseQuestion.response = "Yes, I do like chese"

class ShoppingListItem1 {
    var name: String?
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItem1 ()


/*
    hàm init mặc định
*/

struct Size {
    var width = 0.0, height = 0.0
}

let twoByTwo = Size(width: 2, height: 2)

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init () {}
    init (origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size:size)
    }
}

let basicRect = Rect()
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
let centerRect = Rect(center: Point(x: 4, y: 4), size: Size(width: 3.0, height: 3.0))

class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}

let vehicle = Vehicle()
vehicle.description

class Bicycle: Vehicle {
    override init() {
         super.init()
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
bicycle.description

class  Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

let nameMeat = Food(name: "Bacon")
let mysteryMeat = Food()

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " o" : " x"
        return output
    }
}

var breakfastList = [ShoppingListItem(), ShoppingListItem(name: "Bacon"), ShoppingListItem(name: "Eggs", quantity: 6)]
breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    item.description
}

/*
    Failable Initializer - optional type init - init?
*/

struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty {
            return nil
        }
        self.species = species
    }
}

let someCreature = Animal(species: "Giraffe")

if let giraffe = someCreature {
    giraffe.species
}

let anonymoisCreature = Animal(species: "")
if anonymoisCreature == nil {
    let string = "The anonymous creature could not be initialized"
}

/*
    Failable Initializer for Enumeration
*/

enum TemperatureUnit {
    case Kelvin, Celsius, Fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}

let fahrenheitUnit = TemperatureUnit(symbol: "F")
if fahrenheitUnit != nil {
    let message = "This is a defined temperature unit, so initialization"
}

let unknownUnit = TemperatureUnit(symbol: "X")
if unknownUnit == nil {
    let a = "This is not a defined temperature unit, so initialization failed"
}

enum TemperatureUnit1: Character {
    case Kevil = "K", Celsius = "C", Fahrenheit = "F"
}

let fahrenheitUnit1 = TemperatureUnit1(rawValue: "F")
if fahrenheitUnit1 != nil {
    let message = "this is a defined temperature unit, so initialization succeded"
}

let unknownUnit1 = TemperatureUnit1(rawValue: "X")
if unknownUnit1 == nil {
    let message = "This is not a defined temperature unit, so initialization failed."
}

class Product {
    let name: String!
    init?(name: String) {
        self.name = name
        if name.isEmpty {
            return nil
        }
    }
}

if let bowTie = Product(name: "bow tie") {
    bowTie.name
}

class CartItem: Product {
    let quantity: Int!
    init?(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
        if quantity < 1 {
            return nil
        }
    }
}

if let twoSocks = CartItem(name: "sock", quantity: 2) {
    let message = "Item: \(twoSocks.name), quantity: \(twoSocks.quantity)"
}

if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
    let message = "Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)"
} else {
    let message = "Unable to initialize zero shirts"
}

if let oneUnnamed = CartItem(name: "", quantity: 1) {
    let message = "Item: \(oneUnnamed.name), quantity: \(oneUnnamed.quantity)"
} else {
    let message = "Unable to initialize one unnamed product"
}

/*
    Overriding a Failable Initializer
*/

class Document {
    var name: String?
    init() {}
    init?(name: String) {
        self.name = name
        if name.isEmpty {
            return nil
        }
    }
}

class AutomaticallyNamedDocment: Document {
    override init() {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}

/*
    Required Initializers
    chỉ định toàn bộ các subclass phải implement hàm init này
    ở các subclass không cần viết từ khoán override mà viết từ khoán required
*/

class SomeClass {
    required init() {}
}

class SomeSubclass : SomeClass {
    required init() {}
}