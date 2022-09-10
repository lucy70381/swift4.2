//
//  Ch6_Switch.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/19.
//

import UIKit

class Ch6_Switch: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 屬性面板 state可設置預設狀態
    
    @IBAction func valueChanged(_ sender: UISwitch) {
        label.text = sender.isOn ? "開" : "關"
    }
}
