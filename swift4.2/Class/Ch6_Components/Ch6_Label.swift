//
//  Ch6_Components.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/17.
//

import UIKit

class Ch6_Label: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.numberOfLines = 2
        
        let title1 = UIFont.preferredFont(forTextStyle: .title1)
        let footnote = UIFont.preferredFont(forTextStyle: .footnote)
        
        //套用字型
        let s1 = NSMutableAttributedString(string: "Hello\n", attributes: [NSAttributedString.Key.font: title1])
        
        //套用字型 及 文字顏色
        let s2 = NSMutableAttributedString(string: "第二行文字", attributes: [NSAttributedString.Key.font: footnote, NSAttributedString.Key.foregroundColor: UIColor.blue])
        
        s1.append(s2)
        label.attributedText = s1
        
        // 屬性面板的 Autoshrink: 當文字超過Label寬度 可自動縮小字體 避免出現... (適用用於多語系)
    }
    

}
