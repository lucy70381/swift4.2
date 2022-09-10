//
//  Ch10_Location_To_Address.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/9.
//

import UIKit
import CoreLocation

class Ch10_Location_To_Address: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // import CoreLocation
        
        // 故宮座標
        let location = CLLocation(latitude: 25.102645, longitude: 121.548506)
        let geocoder = CLGeocoder()
        
        // 將座標轉為地址
        geocoder.reverseGeocodeLocation(location) { (placemarks, error) in
            guard error == nil, placemarks != nil else {
                return
            }
            
            for placemark in placemarks! {
                // 名字：National Palace Museum
                print(placemark.name!)
                // 國家：Taiwan
                print(placemark.country!)
                // 位置：Shihlin District
                print(placemark.locality!)
                // 都市
//                print(placemark.administrativeArea!)
            }
        }
    }
    
}
