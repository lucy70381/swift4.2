//
//  Ch10_AnnoationColor.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/8.
//

import UIKit
import MapKit

class Ch10_AnnoationColor: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個View Controller
        // 開啟專案Capability頁面的Maps功能
        
        // 加入一個 Map Kit View
        // MapKit拉藍線 選delegate
        // import MapKit
        // 類別加入MKMapViewDelegate協定
        
        // 新增一個大頭針於地圖上
        let anns = [MKPointAnnotation(), MKPointAnnotation()]
        anns[0].coordinate = CLLocationCoordinate2D(latitude: 24.137426, longitude: 121.275753)
        anns[0].title = "武嶺"
        anns[0].subtitle = "南投縣仁愛鄉(綠色)"
        
        anns[1].coordinate = CLLocationCoordinate2D(latitude: 24.137426, longitude: 120.700458)
        anns[1].title = "奮起湖"
        anns[1].subtitle = "嘉義縣竹崎鄉(橙色)"
        
        mapView.addAnnotations(anns)
        
        mapView.setCenter(anns[0].coordinate, animated: false)
    }
    
    // 實作 mapView(_:viewFor:)
    // 此為當大頭針要顯示在地圖上時呼叫的方法
    // 若無實作 大頭針預設為紅色
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        // 內建的目前位置 無法修改 故回傳nil離開
        if annotation is MKUserLocation {
            return nil
        }
        
        var annView = mapView.dequeueReusableAnnotationView(withIdentifier: "Pin") as? MKPinAnnotationView
        if annView == nil {
            annView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "Pin")
        }
        
        if annotation.title == "武嶺" {
            annView?.pinTintColor = UIColor.green
        }
        else if annotation.title == "奮起湖" {
            annView?.pinTintColor = UIColor.orange
        }
        
        annView?.canShowCallout = true
        
        return annView
    }
}
