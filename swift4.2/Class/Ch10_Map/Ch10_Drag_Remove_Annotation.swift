//
//  Ch10_Drag_Remove_Annotation.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/8.
//

import UIKit
import MapKit

class Ch10_Drag_Remove_Annotation: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個View Controller
        // 開啟專案Capability頁面的Maps功能
        
        // 加入一個 Map Kit View
        // MapKit拉藍線 選delegate
        // import MapKit
        // 類別加入MKMapViewDelegate協定
        
        // 新增一個座標
        let ann = MKPointAnnotation()
        ann.coordinate = CLLocationCoordinate2D(latitude: 24.402551, longitude: 121.161865)
        
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
        annView?.isDraggable = true
        
        return annView
    }
    
    // 實作 mapView(_:didSelect:)
    // 此為當使用者點選大頭針時呼叫的方法
    // 若實作此函數會無法拖動並刪除大頭針
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        mapView.removeAnnotation(view.annotation!)
    }
    
    // 圖案在移動後並不會再自動釘回地圖上
    // 需實作以下方法
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, didChange newState: MKAnnotationView.DragState, fromOldState oldState: MKAnnotationView.DragState) {
        if newState == .ending {
            view.dragState = .none
        }
    }

}
