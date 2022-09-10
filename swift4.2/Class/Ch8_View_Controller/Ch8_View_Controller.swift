//
//  Ch8_View_Controller.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/30.
//

import UIKit

class Ch8_View_Controller: UIViewController {

    @IBOutlet var myView: UIView!
    @IBOutlet weak var blurEffect: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // 拖曳View、Visual Effect View with Blur到View Controller最上方
    // 將View更改背景顏色
    // 在View Controller及View各加入一個Button
    // 顯示按鈕 -> showMyView
    // 確定按鈕 -> closeMyView
    
    // 顯示 myView
    @IBAction func showMyView(_ sender: Any) {
        // 插入滿版模糊背景 可日使用者無法點選原本畫面上的元件
        blurEffect.frame = view.frame
        view.addSubview(blurEffect)
        
        myView.center = view.center
        myView.layer.cornerRadius = 10
        view.addSubview(myView)
    }
    
    // 關閉 myView
    @IBAction func closeMyView(_ sender: Any) {
        blurEffect.removeFromSuperview()
        myView.removeFromSuperview()
    }
}
