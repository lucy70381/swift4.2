//
//  Ch9_ActivityVC.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/2.
//

import UIKit

class Ch9_ActivityVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個 View Controller
        // 拖曳一個Button
    }
    
    @IBAction func onClick(_ sender: Any) {
        let string = "hello"
        let image = UIImage(named: "capoo1")
        
        let vc = UIActivityViewController(activityItems: [string, image!], applicationActivities: nil)
        present(vc, animated: true, completion: nil)
    }
}
