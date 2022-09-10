//
//  Ch6_Animation.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/24.
//

import UIKit

class Ch6_Animation: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // 覆寫viewDidAppear
    override func viewDidAppear(_ animated: Bool) {
        // 設定label為透明
        label.alpha = 0
        
        // 將label 往下移 300點
        var frame = label.frame
        frame.origin.y += 300
        
        UIView.animate(withDuration: 2.0) {
            // 設定label為不透明 並移到新座標
            self.label.alpha = 1
            self.label.frame = frame
        }
    }
   
}
