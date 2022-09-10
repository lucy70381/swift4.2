//
//  Ch6_WebView.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/23.
//

import UIKit
import WebKit

class Ch6_WebView: UIViewController {

    // 要import WebKit框架
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "http://cnn.com")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    // 屬性面板 -> Interaction
    // 勾選 Back/Forward Gestures 以支持手勢操作
    
    // 欲載入非https網址 必須關閉ATS或例外排除
    // 修改 info.plist
    
    // App Transport Security Settings
    //   Exception Domains
    //     cnn.com
    //       NSIncludesSubdomains = 1
    //       NSTemporaryExceptionAllowsInsecureHTTPLoads = 1
}
