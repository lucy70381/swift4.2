import UIKit

var zoo: Set = ["斑馬", "獅子", "長頸鹿"]

//count: 集合中的元素個數
zoo.count   //3

//集合沒有索引值 只能用 contains() 去判斷某個資料是否在集合中
//contains(_:): 檢查某元素是否存在於集合中
if zoo.contains("獅子") {
    print("動物園中有獅子")
}

//insert(_:): 將元素加到集合中
zoo.insert("眼鏡猴")   //{ inserted: true, member: "眼鏡猴" }
print(zoo)  //["獅子", "長頸鹿", "眼鏡猴", "斑馬" ]

//如果插入一個集合中已存在的元素 集合內容並不會改變
//藉由 inserted 可知道插入值是否成功
if zoo.insert("斑馬").inserted {
    print("成功")
} else {
    print("失敗")
}

//remove(_:): 刪除集合中的元素
zoo.remove("獅子")    //獅子

//removeAll(): 刪除陣列所有元素 也可使用空陣列
zoo.removeAll()
zoo = []

var zoo1: Set = ["斑馬", "獅子", "長頸鹿"]
var zoo2: Set = ["北極熊", "企鵝", "長頸鹿", "海獅"]

//intersection(_:): 交集
zoo1.intersection(zoo2) // {"長頸鹿"}

//union(_:): 聯集
zoo1.union(zoo2)    // {"企鵝", "長頸鹿", "北極熊", "斑馬", "獅子", "海獅"}

//symmetricDifference(_:): 對稱差集
zoo1.symmetricDifference(zoo2)  // {"斑馬", "獅子", "海獅", "北極熊", "企鵝"}

//subtracting(_:): 差集
zoo1.subtracting(zoo2)  // {"斑馬", "獅子"}

//isSuperset(_:): 判斷某個集合是否為另一集合的超集合
zoo1.union(zoo2).isSuperset(of: zoo1)   //true

//isSubset(_:): 判斷某個集合是否為另一集合的子集合
zoo1.intersection(zoo2).isSubset(of: zoo1)  //true






