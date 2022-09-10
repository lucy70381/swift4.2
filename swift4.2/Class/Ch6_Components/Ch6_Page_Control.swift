//
//  Ch6_Page_Control.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/19.
//

import UIKit

class Ch6_Page_Control: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func valueChanged(_ sender: UIPageControl) {
        label.text = String(sender.currentPage)
    }
}
