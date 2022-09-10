//
//  Ch6_Progress_View.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/19.
//

import UIKit

class Ch6_Progress_View: UIViewController {

    @IBOutlet weak var progress: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        progress.progress = 0.9
    }
    
    // 屬性面板 Progress 可調整預設進度值
}
