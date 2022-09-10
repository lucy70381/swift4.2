import UIKit

//可使用三個雙引號來支援多行字串
let s = """
aa
bb
cc
"""

//字串相加 使用 + or append()
let s1 = "abc" + "def"
var s2 = "abc"
s2.append("def")

//字串相比 使用 ==
let s3 = "Hello"
let s4 = "Abc"
if s3 == s4 {
    print("s1 與 s2 內容一樣")
}

//檢查字串是否為空 使用 str == "" or isEmpty
let str = ""
if str.isEmpty {
    print("str 為空字串")
}

//Swift 字串不能直接透過Int索引值取字元 須先轉成陣列 (會造成記憶體消耗)
let str2 = "Hello"
var arr = Array(str2)
print(arr[4])   //o
//或使用String.Index型態作為索引值
str2[.init(encodedOffset: 4)]   //o
str2[str2.index(str.startIndex, offsetBy: 4)]

//字串長度: count
let str3 = "abcdef"
print(str3.count)   //6

//字串開始的陣列索引: startIndex
//字串結束的陣列索引: endIndex
//將String.Index型別轉為Int: encodedOffset
print(str3.startIndex.encodedOffset)    //0
print(str3.endIndex.encodedOffset)      //6

//index(_:offsetBy:): 索引值加上偏移量
//從第2個字元開始取3個字
let begin = str3.index(str3.startIndex, offsetBy: 1)
let end = str3.index(begin, offsetBy: 3)
print(str3[begin..<end])    //bcd

//contains(_:): 判斷字串是否包含某字串
if(str3.contains("ddd")) {
    
}

//replacingOccurrences(of:with:):字串取代
let newStr = str3.replacingOccurrences(of: "cde", with: "")
print(newStr)   //abf

//trimmingCharacters(in:):頭尾去空白(換行)
var str4 = "    \tabcdef \n\n  "
str4 = str4.trimmingCharacters(in: .whitespacesAndNewlines)
print(str4)

//uppercased(): 將字串轉為大寫
//lowercased(): 將字串轉為小寫
let lower = str4.lowercased()
let upper = str4.uppercased()

//hasPrefix(_:): 判斷字串是否由某個字串開頭
//hasSuffix(_:): 判斷字串是否由某個字串結尾
str4.hasPrefix("ab")
str4.hasSuffix("ef")

//split(separator:): 分割字串回傳陣列
let str5 = "ab,cd,ef"
let arr2 = str5.split(separator: ",")
