import UIKit



do {
    //會有例外丟出的函數呼叫放在這裡
    let fm = FileManager.default
    try fm.removeItem(atPath: "檔名") //  呼叫函數時必須加上 try
} catch {
    //抓到錯誤時的處理程式放這裡
    print(error.localizedDescription)   //“檔名” couldn’t be removed.
}




//自訂的exception
enum ArithmeticError: Error {
    case DivisionByZero
}

func divided(_ dividend: Float, by divisor: Float) throws -> Float {
    guard divisor != 0 else {
        throw ArithmeticError.DivisionByZero
    }
    return dividend / divisor
}

do {
    let ans = try divided(5, by: 0)
    print(ans)
} catch {
    print("分母為零")
}


//將攔截錯誤機制關閉 可不用加do-catch: try!
//已確認分母不可能為零
let ans = try! divided(10, by: 2)   //5

//若接受nil做為回傳值可使用: try?
let ans2 = try?  divided(10, by: 0) //nil








