//: Playground - noun: a place where people can play

import UIKit

/*
    Biến quan sát dùng để quan sát và trả lời các sự kiện khi giá trị được thay đổi
    dùng cho các thuộc tính lữu trữ hoặc cả thuộc tính lưu trữ và thuộc tính tính toán
    nếu nó được kế thừa. Không thể thêm thuộc tính quan sát vào biến tính toán 1 cách
    trực tiếp bởi ngay trong setter của nó cũng có thể thực hiện được
    Có thể set thuộc tính quan sát bằng từ khoá willset hoặc didset
    Nếu chúng ta không truyền tên tham số vào 2 hàm willSet hoặc didSet thì nó sẽ
    nhận tên mặc định đối với willSet là newValue và didSet là oldValue
*/

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            newTotalSteps
        }
        didSet {
            if totalSteps > oldValue {
                totalSteps - oldValue
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
