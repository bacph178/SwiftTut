//: Playground - noun: a place where people can play

import UIKit

/*
    khai báo và khởi tạo một mảng
*/

var someInts = [Int]()
someInts.count == 0

var threeDoubles = [Double](count: 3, repeatedValue: 3.0)
threeDoubles == [3, 3, 3]

/*
    cộng 2 mảng
*/

var anotherThreeDoubles = [Double](count: 2, repeatedValue: 2.5)
var fiveDoubles = threeDoubles + anotherThreeDoubles

/*
    lấy chỉ số và giá trị tương ứng trong mảng dùng vòng for
*/

for (index, value) in enumerate(fiveDoubles) {
    index
    value
}

/*
    Thao tác với tập hợp Set
*/
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
favoriteGenres.insert("pop")
let result1 = favoriteGenres.remove("Classical")
let result2 = favoriteGenres.remove("hehe")
let result3 = sorted(favoriteGenres)

var set1: Set = [1, 2, 3, 4, 5, 6]
var set2: Set = [4, 5, 6, 7, 8, 9, 10]
var set3: Set = [1, 2]

/*
    set1.uinion(set2) trả về tập hợp bao gồm các phần tử của cả 2 tập (hợp của 2 tập)
*/
sorted(set1.union(set2))

/*
    set1.intersect(set2) trả về tập hợp các phần tử thuộc cả 2 tập (giao của 2 tập)
*/
sorted(set1.intersect(set2))

/*
    set1.subtract(set2) trả về tập hợp các phần tử chỉ thuộc tập 1 không thuộc tập 2 (set1/set2)
*/

sorted(set1.subtract(set2))

/*
    set1.exclusiveOr(set2) trả về tập hợp các phần tử chỉ thuộc 1 không thuộc 2 và 
    các phần tử chỉ thuộc 2 không thuộc 1
*/
sorted(set1.exclusiveOr(set2))

/*
    kiểm tra xem tập 1 có là cha của tập 3
*/
set1.isSupersetOf(set3) == true
set1.isSupersetOf(set1) == true

/*
    kiểm tra xem tập 3 có là con của tập 1
*/
set3.isSubsetOf(set1) == true
set3.isSubsetOf(set3) == true

/*
    kiểm tra xem tập 1 có là cha của tập 3 nhưng không bằng tập 3
*/
set1.isStrictSupersetOf(set3) == true
set1.isStrictSupersetOf(set1) == false


/*
    kiểm tra xem tập 3 có là con của tập 1 nhưng không bằng tập 1
*/

set3.isStrictSubsetOf(set1) == true
set3.isStrictSubsetOf(set3) == false

/*
    kiểm tra xem 2 tập có phần tử chung không
*/
set2.isDisjointWith(set3) == true //2 tập không có phần tử chung

set1
let first = set1[set1.startIndex].hashValue == 5

/*
    ditionary.updateValue() thêm vào 1 phần từ mới nếu key không tôn tại giá trị trả về là nil
    hoặc update giá trị của key nếu key đã tồn tại và giá trị trả về là giá trị cũ của key
    Nhưng vậy hàm này trả về 1 biến optional của kiểu dữ liệu
*/
var airports = ["YYZ": "toronto", "DUB": "Dublin"]
airports.updateValue("Hoang Bac", forKey: "HBA")
airports.updateValue("Lien yeu", forKey: "YYZ")
