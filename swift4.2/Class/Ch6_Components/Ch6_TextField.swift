//
//  Ch6_TextField.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/19.
//

import UIKit

class Ch6_TextField: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    // 屬性面板 -> Clear Button 可讓文字框右方出現刪除按鈕
    
    // 屬性面板 -> Secure Text Entry 可用於密碼
    
    // 屬性面板 -> Keyboard Type 可調整鍵盤種類

    // 覆寫 touchesBegan 可在點擊view時 結束編輯並收起鍵盤
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.endEditing(true)
        })
    }
}
