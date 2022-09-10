//
//  SafariVC.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/2.
//

import UIKit
import SafariServices

class Ch9_SafariVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個 View Controller 匯入SafariServices
        // 加入一個 Button
    }
    
    // 顯示Safari網頁
    @IBAction func onClick(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.apple.com")!)
        show(vc, sender: self)
    }
    
}
