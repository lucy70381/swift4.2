//
//  Ch9_ModalVC.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/1.
//

import UIKit

class Ch9_ModalVC: UIViewController {

    // 拖曳一個 View Controller
    // 將另一個 Ch9_ModalPrepare的Button 拉藍線至此
    // 選擇 Present Modally
    
    // 點選兩個View Controller之間的 Segue
    // 在屬性面板中 將Presentation 設為Form Sheet
    
    // Ch9_ModalPrepare 加入prepare(for: sender:)
    // 實作 adaptivePresentationStyle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // Button拉藍線 設定關閉視窗
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
