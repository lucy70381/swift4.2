import UIKit

//Closure 閉包 將函式當成參數傳遞
func inc(value: Int) -> Int {
    return value + 1
}

func dec(value: Int) -> Int {
    return value - 1
}

func f(_ value: Int, op: (Int)-> Int) -> Int {
    return op(value)
}

print(f(10, op: inc))
print(f(3, op: dec))

//inline closure (沒有預先給函式名稱直接當為參數)
let n7 = f(5, op: { (value) -> Int in
                  return value * value
})
print(n7)

//trailing closure (closure放到函式的最後方)
let n8 = f(5) { (value) -> Int in
    return value * value
}
print(n8)

//其他例子
func doSomething(completion: (_ str: String, _ err: Error?) -> Void) {
    completion("hello", nil)
}

doSomething { (str, err) in
    if err != nil {
        print("失敗: \(err!.localizedDescription)")
        return
    }
    print(str)
}

//使用 $0 $1 $2 代替clousre中的參數名稱 且自行判斷回傳型別
let n9 = f(5) {
    return $0 * $0
}
print(n9)



