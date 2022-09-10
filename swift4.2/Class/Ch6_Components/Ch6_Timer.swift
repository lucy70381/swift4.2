//
//  Ch6_Timer.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/23.
//

import UIKit

class Ch6_Timer: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    // 屬性面板 -> Mode 改為 Count Down Timer

    @IBAction func onClick(_ sender: Any) {
        var second = datePicker.countDownDuration
        label.text = String(second)
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
            second = second - 1
            self.label.text = String(second)
            
            if second < 0 {
                timer.invalidate()
            }
        })
    }
}
