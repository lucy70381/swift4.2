//
//  Ch6_Keyboard_Toolbar.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/24.
//

import UIKit

class Ch6_Keyboard_Toolbar: UIViewController {

    @IBOutlet var toolBar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 將全部的 Text Field 元件所開啟的虛擬鍵盤都透過inputAccessoryView連結toolBar
        // 可針對不同的TextField 加入不同的 ToolBar
        for tmp in view.subviews {
            if tmp is UITextField {
                
                (tmp as! UITextField).inputAccessoryView = toolBar
            }
        }
    }
    
    // 拖曳一個 Tool Bar 到 View Controller 標題列上
    // 再拖放一個 Bar Button Item
    // 加入 Flexiable Space Bar Button Item 隔開兩元件
   
    @IBAction func testButton(_ sender: UIBarButtonItem) {
        for tmp in view.subviews {
            // 讓目前開啟鍵盤的TextField元件 接收hello
            if tmp.isFirstResponder, tmp is UITextField {
                (tmp as! UITextField).text = "hello"
                break
            }
        }
    }
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        UIView.animate(withDuration: 0.3) {
            self.view.endEditing(true)
        }
    }
}
