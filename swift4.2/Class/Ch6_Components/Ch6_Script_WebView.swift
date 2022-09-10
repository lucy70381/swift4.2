//
//  Ch6_Script_WebView.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/23.
//

import UIKit
import WebKit

class Ch6_Script_WebView: UIViewController, WKScriptMessageHandler, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "index", ofType: ".html")
        let url = URL(fileURLWithPath: path!)
        webView.load(URLRequest(url: url))
    }
    
    override func loadView() {
        let configuration = WKWebViewConfiguration()
        configuration.userContentController = WKUserContentController()
        
        // 註冊名稱為Test 方便讓網頁的JS可以使用
        // window.webkit.messageHandlers.Test 傳資料給App
        configuration.userContentController.add(self, name: "Test")
        webView = WKWebView(frame: .zero, configuration: configuration)
        webView.uiDelegate = self
        
        // 將webView取代原先預設的view
        view = webView
    }
    
    // 接收JavaScript傳過來的資料 再傳回網頁
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let tmp = message.body as! String
        webView.evaluateJavaScript("setLabelTitle('\(tmp)')", completionHandler: nil)
    }
    
    // 攔截JavaScript的Alert視窗 轉為UIAlertController
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "確定", style: .default, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        completionHandler()
    }
    
    
    // 操作網頁: goBack()、goForward()、reload()、stopLoading()
    // navigationDelegate 重要函數
    // a.didStartProvisionalNavigation: 當WebView開始下載網頁時呼叫
    // b.didCommit: 當WebView開始收到網頁內容時呼叫
    // c.didFinish: 當網頁下載完成後呼叫
    // d.didFail: 下載失敗時呼叫
}
