//
//  Ch6_DatePicker.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/23.
//

import UIKit

class Ch6_DatePicker: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    // 屬性面板 -> Mode 可設定時間格式
    // Minimum Date、Maximum Date 可設定日期範圍
    
    
    @IBAction func valueChanged(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/M/d H:m"
        let string = formatter.string(from: sender.date)
        label.text = string
    }
}
