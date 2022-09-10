import UIKit

//var: 變數, let: 常數
let str = "Hello, playground"
var n = 0
n = 10

//型別轉換
let c = Int("10")
let s = String(20)

//字串轉二進位
let data = "Hello".data(using: .utf8)
//二進位轉字串
let str2 = String(data: data!, encoding: .utf8)

//as 轉換父、子類別
class Animal {}
class Dog: Animal {}
let 棗子 = Dog()
let 動物 = 棗子 as Animal

//Any
var list: [Any] = []
list.append("hello")
list.append(30)
list.append(20.3)
list.append(["KEY": 5])
print((list[3] as! [String: Int])["KEY"]!)

//For-in
for city in ["台北", "台中", "高雄"] {
    print(city)
}

for n in 0...10 {
    print(n)
}

for c in "hello world" {
    print(c)
}

//where: 條件
for n in 0...10 where n % 2 == 0 {
    print(n)    //0, 2, 4, 6, 8, 10
}

for n in (0...10).reversed() where n % 2 == 0 {
    print(n)    //10, 8, 6, 4, 2, 0
}

//stride [from, to)
for n in stride(from: 10, to: -1, by: -2) {
    print(n)    //10, 8, 6, 4, 2, 0
}

//while
var a = 0
while a < 10 {
    print(a)    //0~9
    a = a + 1
}

//repeat-while
var b = 0
repeat {
    print(b)    //0~9
    b = b + 1
} while b < 10

//continue
for i in 1...5 {
    if i == 3 {
        continue
    }
    print(i)    //1 2 4 5
}

//break
for i in 1...5 {
    if i == 3 {
        break
    }
    print(i)    //1 2
}



//nil
var n4: Int?
n4 = Int("10")
print(n4)   //Optional(10)
print(n4!)  //10

//預設值
let n5 = Int("ABC")
let x2 = n5 ?? 0

//function - return
func getData() -> String {
    return "hi"
}


