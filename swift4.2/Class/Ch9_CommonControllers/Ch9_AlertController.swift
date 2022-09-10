//
//  Ch9_AlertController.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/1.
//

import UIKit

class Ch9_AlertController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // 有.alert 與 .actionSheet 兩種風格
        let alertController = UIAlertController(title: "標題", message: "Alert 風格", preferredStyle: .alert)
        
        // 確定按鈕
        let okAction = UIAlertAction(title: "確定", style: .default) { (action) in
            
        }
        
        // 將確定按鈕加入控制器
        alertController.addAction(okAction)
        
        // 顯示訊息框
        present(alertController, animated: true, completion: nil)
        
       
    }
    @IBAction func onClick(_ sender: UIButton) {
        let alertController = UIAlertController(title: "標題", message: "Alert 風格", preferredStyle: .actionSheet)
        alertController.modalPresentationStyle = .popover
        
        // 確定按鈕
        let okAction = UIAlertAction(title: "確定", style: .default) { (action) in
            
        }
        
        // 將確定按鈕加入控制器
        alertController.addAction(okAction)
        
        // action sheet 一定得使用popover視窗呈現 否則會當掉
        let pop = alertController.popoverPresentationController
        pop?.sourceView = sender
        pop?.sourceRect = sender.bounds
        
        present(alertController, animated: true, completion: nil)
    }
}
