//
//  Ch10_DisplayPosition.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/2.
//

import UIKit

class Ch10_DisplayPosition: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 在專案 -> TARGETS -> 點選Capability 加入Maps功能
        
        // 拖曳一個 View Controller
        // 加入Map Kit View元件 屬性面板 勾選 User Location
        
        // Info.plist 新增 Privacy - Location When In Use Usage Description鍵
        // 值可輸入 使用時才取得GPS座標 亦可留空
        
        // 開啟 AppDelegate
        // 宣告 CLLocationManager型態的全域變數 lm
        // import CoreLocation
        // 在application(_:didFinishLauchingWithOption:)中
        // 加入 lm.requestWhenInUseAuthorization()
        // 詢問使用者是否給予權限
        
    }
    
}
