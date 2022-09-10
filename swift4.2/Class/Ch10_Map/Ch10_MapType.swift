//
//  Ch10_MapType.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/9.
//

import UIKit
import MapKit

class Ch10_MapType: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個View Controller
        // 開啟專案Capability頁面的Maps功能
        
        // 加入一個 Map Kit View
        // import MapKit
        
        // 可在屬性面板設定地圖類型
        
        // 亦可使用code調整
        // 標準
//        mapView.mapType = .standard
        
        // 衛星
        mapView.mapType = .satellite
        
        // 混合
//        mapView.mapType = .hybrid
    }
}
