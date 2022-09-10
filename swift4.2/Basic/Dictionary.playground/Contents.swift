import UIKit

//宣告一個空字典
var dict: [String: String] = [:]

//key不可重複
//key與value無資料型態限制
var david: [String: Any] = [
    "髮色": "黑色",
    "身高": 175,
    "體重": 70
]

//加上 ! 避免印出 optional
print(david["身高"]!)  //175

//修改
david["體重"] = 65

//動態增加屬性
david["性別"] = "男"

//計算字典中有多少個key: count
david.count // 4

//傳回所有的 key: keys
for key in david.keys {
    print(key)
}

//傳回所有的 value: values
for value in david.values {
    print(value)
}

//removeValue(forKey:): 刪除某個特定的key
david.removeValue(forKey: "髮色")    // 黑色

//removeAll(): 刪除字典中所有的key 也可以使用空字典
david.removeAll()
david = [:]

//forEach(body: ((key: String, value: Any)) throws -> Void): 列出字典中每一個元素
david.forEach({ (key, value) in
    print(value)
})



