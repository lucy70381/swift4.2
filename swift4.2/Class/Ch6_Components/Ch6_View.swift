//
//  Ch6_View.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/24.
//

import UIKit

class Ch6_View: UIViewController {

    // 拖曳bottom constraint 建立 IBOutlet屬性
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // 利用switch 控制bottomConstraint 並加入動畫
    @IBAction func onOff(_ sender: UISwitch) {
        bottomConstraint.constant = sender.isOn ? 0 : -128
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}
