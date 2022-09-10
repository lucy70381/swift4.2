import UIKit

//封裝
class A {
    var n = 0
}

func square4(_ obj: A) {
    obj.n = obj.n * obj.n
}

let a1 = A()
a1.n = 10
square4(a1)
print(a1.n)

//父類別
class Animal {
    let legs: Int
    static var count = 0    //type property or class variable
    
    //init 可初始化常數
    init(withLegs: Int) {
        legs = withLegs
        Animal.count += 1
    }
}

//子類別 繼承Animal
class Dog: Animal {
    var name: String? = nil
    
    init() {
        super.init(withLegs: 4)
    }
}

let puppy = Dog()   //instance 實體
puppy.name = "棗子"
print(puppy.legs)   //4

let puppy1 = Dog()
print(Animal.count) //2




//單例 (singleton)
class Supervisor {
    private var name: String
    private static var _main: Supervisor?
    
    static var main: Supervisor {
        get {
            if Supervisor._main == nil {
                Supervisor._main = Supervisor(name: "CKK")
            }
            return Supervisor._main!
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        return name
    }
}

let name = Supervisor.main.getName()    // CKK








