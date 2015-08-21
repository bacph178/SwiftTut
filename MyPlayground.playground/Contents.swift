//: Playground - noun: a place where people can play

import UIKit

/*
    thường sử dụng với các class làm việc với file và ghi dữ liệu
    cấu trúc
    deinit {}
*/

struct Bank {
    static var coinsInBank = 10_000
    static func vendCoins (var numberOfCoinsToVend: Int) -> Int {
        numberOfCoinsToVend = min(numberOfCoinsToVend, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receiveCoins(coins: Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int = 0
    init(coins: Int) {
        coinsInPurse += Bank.vendCoins(coins)
    }
    func winCoins(coins: Int) {
        coinsInPurse += Bank.vendCoins(coins)
    }
    deinit {
        Bank.receiveCoins(coinsInPurse)
    }
}

var playerOne: Player? = Player(coins: 100)
playerOne!.coinsInPurse
Bank.coinsInBank

playerOne!.winCoins(2_000)
Bank.coinsInBank

playerOne = nil

Bank.coinsInBank