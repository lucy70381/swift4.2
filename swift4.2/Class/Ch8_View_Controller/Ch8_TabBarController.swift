//
//  Ch8_TabBarController.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/31.
//

import UIKit

class Ch8_TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 新增標籤頁: Tab Bar Controller 右鍵拖藍線 到欲加入的View Controller 選擇 view controllers
        // 在每個標籤頁的view controller都可以透過 tabBarController操作

        // 欲變更標籤頁的文字或圖片時 點選欲變更頁面下方的工具列 在屬性面板中修改
        
        // 利用程式碼加入一個新標籤
        // 將欲加入的頁面 Identifier -> Storyboard ID 設為favorite
        let vc = storyboard?.instantiateViewController(withIdentifier: "favorite")
        // 可透過tabBarController(self)的 viewControllers.append(_:)
        self.viewControllers?.append(vc!)
        // 標籤的設定必須先在欲加入的view controller中設定
        vc?.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        // 需加入此才能知道使用者點選了哪個標籤頁
        delegate = self
    }
    
    // 實作tabBarController(_:didSelect:)函數 可知道使用者點選了哪個標籤頁
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if viewController == viewControllers?[0] {
            print("第一個標籤頁")
        } else if viewController == viewControllers?[1] {
            print("第二個標籤頁")
        } else if viewController == viewControllers?[2] {
            print("第三個標籤頁")
        } else if viewController == viewControllers?[3] {
            print("第四個標籤頁")
        }
        
        // 亦可使用 selectedIndex 取得
        print("\(selectedIndex + 1)")
    }
}
