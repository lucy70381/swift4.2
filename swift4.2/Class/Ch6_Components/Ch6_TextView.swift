//
//  Ch6_Rich_Text.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/20.
//

import UIKit

class Ch6_TextView: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 取得File.rtf 在專案中的url路徑
        let url = Bundle.main.url(forResource: "File", withExtension: "rtf")
        
        // rtf非純文字 故需使用 NSAttributedString 資料型態
        let aString = try! NSAttributedString(
            url: url!,
            options: [.documentType: NSAttributedString.DocumentType.rtf],
            documentAttributes: nil
        )
        
        // 非純文字使用attributedText 非text
        textView.attributedText = aString
        
        // 設定唯讀
        textView.isEditable = false
    }
    
}
