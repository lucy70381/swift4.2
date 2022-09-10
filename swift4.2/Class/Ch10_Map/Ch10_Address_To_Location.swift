//
//  Ch10_Address_To_Location.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/9.
//

import UIKit
import MapKit

class Ch10_Address_To_Location: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個View Controller
        // 開啟專案Capability頁面的Maps功能
        
        // 加入一個 Map Kit View
        // import MapKit
        
        // 加入一個 Button
    }
    
    @IBAction func onClick(_ sender: UIButton) {
        let request = MKLocalSearch.Request()
        
        // 可輸入地址或關鍵字
        request.naturalLanguageQuery = "郵局"
        
        // 這行必須等地圖出現後才能取得正確的region資料
        request.region = mapView.region
        
        let search = MKLocalSearch(request: request)
        
        search.start { (response, error) in
            guard error == nil else {
                return
            }
            
            guard response != nil else {
                return
            }
            
            for item in (response?.mapItems)! {
                self.mapView.addAnnotation(item.placemark)
            }
        }
    }
}
