//
//  Ch5_Typesetting.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/17.
//

import UIKit

class Ch5_Typesetting: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /* 5-4 用程式碼建立元件、Constraint */
        let label = UILabel()
        label.backgroundColor = UIColor.lightGray
        label.text = "5-4 用程式碼建立元件、Constraint"
        label.translatesAutoresizingMaskIntoConstraints = false //關閉autoresizing 功能
        view.addSubview(label)
        
        // addSubview 後才能設定 constraint
        label.heightAnchor.constraint(equalToConstant: 22).isActive = true  // 設定label高度
        //設定label 的 左 上 右 constraint
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        /* 5-7 判定裝置種類 */
        switch traitCollection.userInterfaceIdiom {
        case .pad:
            label1.text = "此裝置為 iPad"
        case .phone:
            label1.text = "此裝置為 iPhone"
        case .tv:
            label1.text = "此裝置為 Apple TV"
        case .carPlay:
            label1.text = "此裝置為 carPlay"
        case .mac:
            label1.text = "此裝置為 mac"
        case .unspecified:
            label1.text = "無法判別"
        }
    }
    

    //TextFiedld 右鍵拖藍線到 Label
    //shift 勾選 Horizontal Spacing Center Vertically(中心點的Y必須與Label一致)
    
    /* 5-3 維持元件相對位置 */
    // 全選相對元件 -> Align -> 水平、垂直置中
    // 第一個元件 -> 尺寸面板 -> Align Center Y to :
    // Multiplier 輸入想要的倍率
    
    // 元件個數及對應的倍率
    // 2 -> 2/3, 4/3
    // 3 -> 2/4, 4/4, 6/4
    // 4 -> 2/5, 4/5, 6/5, 8/5
    // 5 -> 2/6, 4/6, 6/6, 8/6, 10/6
    // 6 -> 2/7, 4/7, 6/7, 8/7, 10/7, 12/7
    
    // 元件 -> 屬性 -> Installed 若為勾選代表期會出現在所有環境上
    // 若勾選 wC hR 則代表期會出現在所有 wC hR的環境上

    /* 5-6 直向或橫向時顯示不同圖片 */
    // Asset.xcassets 右鍵新增Image Set
    // 屬性面板可設定 Height Class: Any & Compact
    
    
    // 當長寬(regular、compact)變化時會呼叫此函數
    // 但 iPad的長寬都被設為 regular 故不會被呼叫
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        super.willTransition(to: newCollection, with: coordinator)
        
        if (label2 != nil && label3 != nil) {
            if newCollection.horizontalSizeClass == .compact {
                label2.text = "Compact Width"
            }
            
            else if newCollection.horizontalSizeClass == .regular {
                label2.text = "Regular Width"
            }
            
            if newCollection.verticalSizeClass == .compact {
                label3.text = "Compact Height"
            }
            
            else if newCollection.verticalSizeClass == .regular {
                label3.text = "Regular Height"
            }
        }
    }
    
    // 當解析度(width、height)改變時會呼叫此函數
    // 可透過此方法 透過UIDevice 判斷裝置是直向還是橫向
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        let text = "解析度為 \(size.width) x \(size.height)"
        if (label4 != nil) {
            switch UIDevice.current.orientation {
            case .faceDown:
                label4.text = "裝置面朝下 \(text)"
            case .faceUp:
                label4.text = "裝置面朝上 \(text)"
            case .landscapeLeft:
                label4.text = "裝置橫向 Home在右邊 \(text)"
            case .landscapeRight:
                label4.text = "裝置橫向 Home在左邊 \(text)"
            case .portrait:
                label4.text = "裝置直向 \(text)"
            case .portraitUpsideDown:
                label4.text = "裝置上下顛倒 \(text)"
            case .unknown:
                label4.text = "無法判定 \(text)"
            }
        }
    }
    
    /* 5-9 依特定比例設定 Stack View中元件大小 */
    // 等長/寬: 設Distribution 為Fill Equally
    // 不同比例: 將每個元件拖藍線到 StackView -> equal width 並設置個別 Multiplier
    // 固定大小: 將欲固定大小的元件 鎖死高度/寬度 剩下空間讓StackView分配

}
