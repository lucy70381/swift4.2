//
//  Ch10_Routes.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/9.
//

import UIKit
import MapKit

class Ch10_Routes: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // import MapKit
        
        let taipei101 = CLLocationCoordinate2D(latitude: 25.033850, longitude: 121.564977)
        let airstation = CLLocationCoordinate2D(latitude: 25.068554, longitude: 121.552932)
        
        // 根據坐標取得地標
        let pA = MKPlacemark(coordinate: taipei101, addressDictionary: nil)
        let pB = MKPlacemark(coordinate: airstation, addressDictionary: nil)
        
        // 根據地標建立地圖項目
        let miA = MKMapItem(placemark: pA)
        let miB = MKMapItem(placemark: pB)
        
        miA.name = "台北101"
        miB.name = "松山機場"
        
        // 起迄點
        let routes = [miA, miB]
        
        // 設定為開車模式
        let options = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        
        // 開啟地圖開始導航 (台北101 -> 松山機場)
        MKMapItem.openMaps(with: routes, launchOptions: options)
    }
    
}
