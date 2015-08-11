//: Playground - noun: a place where people can play

import UIKit

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() ->String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
    func compares(firstRank: Rank) -> Int {
        if firstRank.rawValue > self.rawValue {
            return -1
        } else if firstRank.rawValue == self.rawValue {
            return 0
        } else {
            return 1
        }
    }
}

let ace = Rank.Ace
let two = Rank.Two
ace.compares(two)
two.compares(ace)

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    threeDescription
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription()->String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .Spades:
            return "black"
        case .Clubs:
            return "black"
        case .Hearts:
            return "red"
        case .Diamonds:
            return "red"
        }
    }
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "the \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

enum ServerResponse {
    case Result(String, String)
    case Error(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese.")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)"
case let .Error(error):
    let serverResponse = "Failure... \(error)"
}
