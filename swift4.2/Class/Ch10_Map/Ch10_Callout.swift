//
//  Ch10_Callout.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/8.
//

import UIKit
import MapKit
import SafariServices

class Ch10_Callout: UIViewController, MKMapViewDelegate {
    
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
        ann.coordinate = CLLocationCoordinate2D(latitude: 24.137426, longitude: 121.275753)
        ann.title = "武嶺"
        mapView?.addAnnotation(ann)
        
        mapView?.setCenter(ann.coordinate, animated: false)
    }
    
    // 實作面板右側按鈕按下去後要呼叫的函數
    @objc func buttonPress(_ sender: UIButton) {
        if sender.tag == 100 {
            let url = URL(string:"https://www.taroko.gov.tw")
            let safari = SFSafariViewController(url:url!)
            show(safari, sender: self)
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        
        var annView = mapView.dequeueReusableAnnotationView(withIdentifier: "Pin")
        if annView == nil {
            annView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "Pin")
        }
        
        if annotation.title == "武嶺" {
            
            // 設置左側圖片
            let imageView = UIImageView(image: UIImage(systemName: "pencil"))
            annView?.leftCalloutAccessoryView = imageView
            
            // 設置title下方的內文
            let label = UILabel()
            label.numberOfLines = 2
            label.text = "緯度:\(annotation.coordinate.latitude)\n經度:\(annotation.coordinate.longitude)"
            annView?.detailCalloutAccessoryView = label
            
            // 設置右側按鈕
            let button = UIButton(type: .detailDisclosure)
            button.tag = 100
            button.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
            
            annView?.rightCalloutAccessoryView = button
        }
        
        annView?.canShowCallout = true
        
        return annView
    }
}
