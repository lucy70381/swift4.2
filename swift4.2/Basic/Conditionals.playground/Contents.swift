import UIKit

//if-else
let a = 10
if a == 10 {
    
} else if a == 20 {
    
} else {
    
}

let x = (a == 10) ? 5 : 3

//switch-case
let n2 = 0
switch n2 {
case 0...2:
    break
case 3...5:
    break
default:
    break
}

//enum
enum Direction {
    case north
    case east
    case south
    case west
    case unknown
}

var d: Direction = .south
switch d {
case .north:
    print("朝北")
case .east:
    print("朝東")
case .south:
    print("朝南")
case .west:
    print("朝西")
default:
    print("無法確定方向")
}

//guard 檢查
var n3 = 10
func somefunc() {
    guard n > 0 else {
        print("n 的值不合規定")
        return
    }
    print("OK")
}
somefunc()

//iOS 版本判斷
if #available(iOS 12, *) {
    //在 iOS 12 以上
} else if #available(iOS 11, *) {
    //在 iOS 11 以上
} else if #available(iOS 10, *) {
    //在 iOS 10 以上
}
