//
//  Ch6_Toolbar.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/24.
//

import UIKit

class Ch6_Toolbar: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // 拖曳一個 Toolbar 元件
    // 拖放一個 Bar Button Item
    // 拖放一個 Fixed Space Bar Button Item
    // 屬性面板 修改 System Item 改變圖示
    
    @IBAction func actionButtonClick(_ sender: UIBarButtonItem) {
        label.text = "按下動作按鈕"
    }
    
    
    @IBAction func trashButtonClick(_ sender: UIBarButtonItem) {
        label.text = "按下垃圾桶按鈕"
    }
}
