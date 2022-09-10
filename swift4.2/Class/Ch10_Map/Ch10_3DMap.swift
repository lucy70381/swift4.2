//
//  Ch10_3DMap.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/9.
//

import UIKit
import MapKit

class Ch10_3DMap: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個View Controller
        // 開啟專案Capability頁面的Maps功能
        
        // 加入一個 Map Kit View
        // import MapKit
        
        // ground 為巴黎鐵塔的座標
        let ground = CLLocationCoordinate2DMake(48.858356, 2.294481)
        
        // eyeFrom 為攝影機座標
        let eyeFrom = CLLocationCoordinate2DMake(48.847, 2.294481)
        
        // 設定攝影機位置與高度
        let camera = MKMapCamera(lookingAtCenter: ground, fromEyeCoordinate: eyeFrom, eyeAltitude: 50)
        
        // 設定以3D衛星圖方式呈現
        mapView.mapType = .satelliteFlyover
        
        // 允許可以從斜的方向觀看地圖 否則都是從正上方
        mapView.isPitchEnabled = true
        
        // 在地圖上加上攝影機
        mapView.camera = camera
    }
    
}
