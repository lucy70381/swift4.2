//
//  Ch4.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/17.
//

import UIKit

class Ch4_Segue: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onClick(_ sender: Any) {
        label.text = "hello world"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue_vc_to_myvc" {
            let vc = segue.destination as! MyViewController
            vc.str = "hello"
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        if unwindSegue.identifier == "unwind_vc_to_my_vc" {
            let vc = unwindSegue.source as! MyViewController
            if let str = vc.str {
                label.text = str
            }
        }
    }
    
    // 不使用Segue切換畫面須建立一個 View Controller
    // Stryboard ID 設為 nextVC
    @IBAction func onClick2(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "nextVC")
        show(vc!, sender: self) //會保留導覽列
    }
    
    // Editor -> Refactor to Storyboard可分割視圖
    // 拖曳一個 Storyboard Reference 當Segue 設為Main 即可Navigate

}
