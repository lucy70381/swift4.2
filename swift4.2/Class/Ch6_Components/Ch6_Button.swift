//
//  Ch6_Button.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/17.
//

import UIKit

class Ch6_Button: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button.isEnabled = true
        button.isSelected = true
        button.setTitle("被選到了", for: .selected)
    }
    
    //屬性面板 -> Type -> Detail Disclosure 可變成資訊圖案

    

}
