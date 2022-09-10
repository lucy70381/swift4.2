import UIKit

//宣告一個字串陣列並初始化為空陣列
var cities = [String]()

//append(): 增加元素
cities.append("台北")
cities.append("台中")
cities.append("高雄")

//初始化時就填入值 (let 無法再修改內容)
let flowers = ["百合", "玫瑰", "鬱金香"]

//宣告並初始化一個大型陣列
//產生100個元素 並且全部初始化為0
var array = Array(repeating: 0, count: 100)

//宣告二維陣列
var nums = [[Int]]()

nums.append([1, 2, 3])
nums.append([4, 5, 6])

//初始化二維陣列
//建立 3x3二維矩陣 且每個元素預設為0
var matrix = Array(repeating: Array(repeating: 0, count: 3), count: 3)

//陣列元素個數: count
var arr = [5, 7, 2, 1]
print(arr.count)   //4

//append(_:): 在陣列尾端增加一個元素
arr.append(9)   // [5, 7, 2, 1, 9]

//insert(_:at:): 將元素插入到指定的索引編號位置
arr.insert(0, at: 1)    // [5, 0, 7, 2, 1, 9]

//remove(at: Int): 將指定陣列索引值的元素刪除
arr.remove(at: 2)   // 7
print(arr)  // [5, 0, 2, 1, 9]

//removeAll(): 刪除陣列中所有元素 也可使用空陣列
arr.removeAll()
arr = []

//sort: 排序 (會影響原先的陣列的內容)
arr = [5, 7, 2, 1]
arr.sort()  // [1, 2, 5, 7]
print(arr)  // [1, 2, 5, 7]

//sorted: 排序 (不會影響原先的陣列的內容 改以回傳另一個陣列)
arr = [5, 7, 2, 1]
arr.sorted()// [1, 2, 5, 7]
print(arr)  // [5, 7, 2, 1]

//reverse(): 將陣列反轉
arr.reverse()   // [1, 2, 7, 5]
print(arr)  // [1, 2, 7, 5]

//swapAt(_:_:): 將索引值 i 與 j 的元素對調
arr.swapAt(1, 3)    // [1, 5, 7, 2]

//contains(_:): 檢查某元素是否存在於陣列中
arr.contains(2) //true

//回傳陣列的第一筆: first
arr.first   // 1

//回傳陣列的最後一筆: last
arr.last    // 2

//forEach(body: (Int) throws -> Void): 列出陣列中的每一個元素
arr.forEach { (element) in
    print(element)
}

