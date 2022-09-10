//
//  Ch6_Slider.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/19.
//

import UIKit

class Ch6_Slider: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // 屬性面板內可調整滑桿 最小值、最大值、現行值
    
    @IBAction func valueChanged(_ sender: UISlider) {
        label.text = String(sender.value)
    }
}
