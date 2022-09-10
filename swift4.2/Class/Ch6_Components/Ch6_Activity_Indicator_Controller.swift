//
//  Ch6_Activity_Indicator_Controller.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/19.
//

import UIKit

class Ch6_Activity_Indicator_Controller: UIViewController {

    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //屬性面板 -> Behavior 勾選 Animating、Hide when stopped 當動畫停止便會自動隱藏
    
    @IBAction func valueChanged(_ sender: UISwitch) {
        sender.isOn ? activity.startAnimating() : activity.stopAnimating()
    }
}
