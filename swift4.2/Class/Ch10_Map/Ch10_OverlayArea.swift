//
//  Ch10_OverlayArea.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/8.
//

import UIKit
import MapKit

class Ch10_OverlayArea: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個View Controller
        // 開啟專案Capability頁面的Maps功能
        
        // 加入一個 Map Kit View
        // MapKit拉藍線 選delegate
        // import MapKit
        // 類別加入MKMapViewDelegate協定
        
        // 新增四個座標
        var points = [CLLocationCoordinate2D]()
        points.append(CLLocationCoordinate2D(latitude: 24.2013, longitude: 120.5810))
        points.append(CLLocationCoordinate2D(latitude: 24.2044, longitude: 120.6559))
        points.append(CLLocationCoordinate2D(latitude: 24.1380, longitude: 120.6401))
        points.append(CLLocationCoordinate2D(latitude: 24.1424, longitude: 120.5783))
        let polygon = MKPolygon(coordinates: &points, count: points.count)
        mapView.addOverlay(polygon)
        
        mapView?.setCenter(points[0], animated: false)
    }
    
    // 實作 mapView(_:rendererFor:)函數
    // 此函數會標示出一個幾何區域
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let render = MKPolygonRenderer(overlay: overlay)
        
        if overlay is MKPolygon {
            // 設定範圍內塗滿的顏色
            render.fillColor = UIColor.red.withAlphaComponent(0.2)
            
            // 設定線條的顏色
            render.strokeColor = UIColor.red.withAlphaComponent(0.7)
            
            // 設定線條粗細
            render.lineWidth = 3
        }
        
        return render
    }

}
