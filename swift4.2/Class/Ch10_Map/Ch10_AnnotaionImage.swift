//
//  Ch10_AnnotaionImage.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/8.
//

import UIKit
import MapKit

class Ch10_AnnotaionImage: UIViewController, MKMapViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個View Controller
        // 開啟專案Capability頁面的Maps功能
        
        // 加入一個 Map Kit View
        // MapKit拉藍線 選delegate
        // import MapKit
        // 類別加入MKMapViewDelegate協定
        
        // 新增一個座標
        // 透過 view.subviews.first 可不用拉藍線建立IBOutlet屬性
        let mapView = view.subviews.first as? MKMapView
        let ann = MKPointAnnotation()
        ann.coordinate = CLLocationCoordinate2D(latitude: 24.120305, longitude: 120.650916)
        
        mapView?.addAnnotation(ann)
        mapView?.setCenter(ann.coordinate, animated: false)
    }
    
    // 實作 mapView(_:viewFor:)
    // 此為當大頭針要顯示在地圖上時呼叫的方法
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        
        var annView = mapView.dequeueReusableAnnotationView(withIdentifier: "Pin")
        if annView == nil {
            annView = MKAnnotationView(annotation: annotation, reuseIdentifier: "Pin")
        }
        
        annView?.image = UIImage(systemName: "trash")
        
        return annView
    }
}
