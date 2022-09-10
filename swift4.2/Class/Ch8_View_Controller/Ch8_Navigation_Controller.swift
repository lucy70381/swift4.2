//
//  Ch8_Navigation_Controller.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/30.
//

import UIKit

class Ch8_Navigation_Controller: UIViewController {
    
    // 拖曳一個Navigation Controller
    // 將附帶的表格視圖控制器刪除 加入View Controller
    // Navigation Controller 拉藍線到 View Controller 選擇root view controller
    // 再增加一個 View Controller
    // 在第一個視圖控制器 加入一個按鈕 拉藍線到 第二個視圖 選擇show
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 若要修改回到上一頁的顯示文字 在前一頁屬性面板修改Back Button欄位即可
        // 但若需要自訂上一頁按鈕圖案 則需靠程式碼
//        let image = UIImage(named: "capoo1")?.withRenderingMode(.alwaysOriginal)
//        let backItem = UIBarButtonItem(image: image, style: .plain, target: nil, action: nil)
//        navigationItem.backBarButtonItem = backItem
        
        // 若想連<箭頭都要換成圖片 則必須透過 navigation bar 來處理
        // 若不使用 withRenderingMode()函數 顏色會被系統強制改為預設的藍色
        let backItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backItem
        
        let image = UIImage(named: "capoo1")?.withRenderingMode(.alwaysOriginal)
        navigationController?.navigationBar.backIndicatorImage = image
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = image
    }
    
    
}
