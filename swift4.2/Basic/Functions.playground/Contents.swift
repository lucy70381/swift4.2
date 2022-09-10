import UIKit

//function - 參數
func square(value: Float) -> Float {
    return value * value
}
let ans = square(value: 5)

//function - 參數 (重新命名)
func square2(number value: Float) -> Float {
    return value * value
}
let ans2 = square2(number: 5)

//function - 參數 (不想加入參數標籤可用底線代替)
func square3(_ value: Float) -> Float {
    return value * value
}
let ans3 = square3(5)

func add(_ value1: Float, _ value2: Float) -> Float {
    return value1 + value2
}

//參數加入預設值
func hi(who: String = "anonymous") {
    print("hi, \(who)")
}

hi()
hi(who: "John")

//參數數量非固定 (使用...轉換為陣列型態)
func sum(_ values: Float ...) -> Float {
    var total: Float = 0
    for n in values {
        total += n
    }
    return total
}

print(sum(1, 2, 3, 4, 5))

//call by reference / call by address
func inc(_ value: inout Int) {
    value = value + 1
}

var n6 = 0
inc(&n6)
print(n6)
