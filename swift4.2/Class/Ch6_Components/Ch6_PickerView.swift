//
//  Ch6_PickerView.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/23.
//

import UIKit

// 拖放Picker View 到 View Controller
// 勾選 dataSource: 告訴 Picker View 從哪個View Controller取要顯示的資料
// 勾選 delegate: 告訴 Picker View 當使用者選了選項後要讓哪個View Controller知道

// class 添加 UIPickerViewDataSource 與 UIPickerViewDelegate 以符合協定的規範
class Ch6_PickerView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let fromList = ["台北松山", "桃園", "台中清泉崗", "高雄小港"]
    let toList = ["上海浦東", "香港赤臘角", "日本成田", "韓國仁川"]
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // 幾個滾輪
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // 每個滾輪有幾筆資料
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        // 0 代表最左邊的滾輪
        if component == 0 {
            return fromList.count
        } else if component == 1 {
            return toList.count
        }
        
        return 0
    }
    
    // 實作titleForRow Picker View詢問每筆資料的實際內容為何
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return fromList[row]
        } else if component == 1 {
            return toList[row]
        }
        
        return nil
    }
    
    // 實作didSelectRow 選擇後的處理
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            label1.text = "出發地：\(fromList[row])"
        } else if component == 1 {
            label2.text = "目的地：\(toList[row])"
        }
    }
}
