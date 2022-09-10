//
//  MyViewController.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/16.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var str: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let str = str {
            label.text = str
        }
    }
}
