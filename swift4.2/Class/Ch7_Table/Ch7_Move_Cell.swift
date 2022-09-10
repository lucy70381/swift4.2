//
//  Ch7_Move_Row.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/25.
//

import UIKit

class Ch7_Move_Cell: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var list = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        list.append("爬山")
        list.append("滑雪")
        list.append("打球")
    }
    
    /* 7-1 使用表格元件---------------------------------------------*/
    // 回傳有幾個區段
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 回傳每個區段有幾筆資料
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    // 回傳每筆資料的內容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 判斷記憶體池有無閒置記憶體可用 若有則回傳 沒有則產生一個新的
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    /* 7-2 哪一個儲存格被點選 ---------------------------------------*/
    // 方法一: 實作 didSlectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    // 方法二: Table View 拉藍線建立 IBOutlet屬性
    //        並在需要的地方添加以下程式碼
    func beClicked() {
        if let indexPath = tableView.indexPathForSelectedRow {
            print(list[indexPath.row])
        }
    }
    
    /* 7-3 改變儲存格樣式與指示器 ------------------------------------*/
    // Style: 可調整 Table View Cell 樣式
    // Accessory: 亦可調整指示器
    // 程式碼 Ex: cell.accessoryType = .checkmark
    
    /* 7-4 改變儲存格順序 ------------------------------------------*/
    // 開啟表格編輯模式
    // 在viewDidAppear 添加 tableView.isEditing = true
    override func viewDidAppear(_ animated: Bool) {
        tableView.isEditing = true
    }
    
    // 設定可移動 實作canMoveRowAt
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // 實作moveRowAt 調整list元素順序
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let tmp = list[sourceIndexPath.row]
        list.remove(at: sourceIndexPath.row)
        list.insert(tmp, at: destinationIndexPath.row)
    }
    
    // 若不想讓使用者刪除儲存格 需實作editingStyleForRowAt 預設為開啟
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
}
