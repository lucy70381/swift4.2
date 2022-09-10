//
//  Ch6_Segmented_Control.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/18.
//

import UIKit

class Ch6_Segmented_Control: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // 屬性面板 -> Segments 設定分段數量
    // 並設定Segment2(第3段) 為Third
    
    @IBAction func onClick(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        label.text = "\(index) \(sender.titleForSegment(at: index)!)"
        
    }
}
