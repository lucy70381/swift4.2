//
//  Ch6_Component_By_Code.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/24.
//

import UIKit

class Ch6_Component_By_Code: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(type: .system)
        button.setTitle("按鈕", for: .normal)
        
        // 連結 點下去 的 IBAction 函數
        button.addTarget(self, action: #selector(onClick(_:)), for: .touchUpInside)
        
        view.addSubview(button)
        
        // 讓按鈕調到適當大小
        button.sizeToFit()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // 設定 constraint 距離右下角50點
        button
            .trailingAnchor
            .constraint(equalTo: view.trailingAnchor, constant: -50)
            .isActive = true
        
        button
            .bottomAnchor
            .constraint(equalTo: view.bottomAnchor, constant: -50)
            .isActive = true
    }
    
    @IBAction func onClick(_ sender: UIButton) {
        print("Hello")
    }
}
