//: Playground - noun: a place where people can play

import UIKit

var emptyString = ""
//kiểm tra String rỗng
if emptyString.isEmpty {}

//Character
let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!"]
catCharacters == ["C", "a", "t", "!"]
let catString = String(catCharacters)
catString == "Cat!"

/*
    thêm 1 kí tự vào string bằng hàm apend
*/

var hoangBac = "Hello"
count(hoangBac)
var exampleCharacter: Character = "!"
hoangBac.append(exampleCharacter)
count(hoangBac)

//lấy chỉ số đầu tiên
hoangBac.startIndex

//lấy chỉ số cuối cùng
hoangBac.endIndex

//lấy chỉ số ngay sau chỉ số đầu tiên
hoangBac.startIndex.successor()

//lấy chỉ số ngay trước chỉ số cuối cùng
hoangBac.endIndex.predecessor()

//lấy chỉ số có khoảng cách 2 từ startIndex
let index = advance(hoangBac.startIndex, 2)

//lấy chỉ số có khoảng cách 3 từ index
let index2 = advance(index, 3)
hoangBac[index2]

/*
    Dùng hàm indicies để tạo ra Range của tất cả các chỉ số được truy cập trong một
    string
*/

for i in indices(hoangBac) {
    let a = "Heee"
}

/*
    Inserting một kí tự vào một chỉ ố xác định
*/
var welcome = "hello"
welcome.insert("!", atIndex: welcome.endIndex)
welcome == "hello!"

/*
    chèn một string vào một string
*/
welcome.splice(" Bắc đẹp trai", atIndex: welcome.endIndex.predecessor())
welcome == "hello Bắc đẹp trai!"

/*
    remove một kí tự tại một chỉ số xác định
*/
welcome.removeAtIndex(welcome.endIndex.predecessor())
welcome == "hello Bắc đẹp trai"

/*
    remove một chuỗi con ở một khoảng nhất định
*/


//"Voulez-vous un cafe" sử dụng LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}"

//"Voulez-vous un cafe" sử dụng LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}"

if eAcuteQuestion == combinedEAcuteQuestion {
    let string = "OK rui"
}

/*
    hasPrefix kiểm tra string có chứa chuỗi ở cuối không
*/

let testString = "ok rui nhe"
testString.hasPrefix("ok") == true
testString.hasSuffix("nhe") == true