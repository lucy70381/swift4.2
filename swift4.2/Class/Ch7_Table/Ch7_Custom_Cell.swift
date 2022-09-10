//
//  Ch7_Custom_Cell.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/25.
//

import UIKit

class Ch7_Custom_Cell: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var list = [(title: String, isFavorite: Bool)]()

    override func viewDidLoad() {
        super.viewDidLoad()

//        list.append("爬山")
//        list.append("滑雪")
//        list.append("打球")
        
        list.append(("爬山", true))
        list.append(("滑雪", false))
        list.append(("打球", true))
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
    
    // 回傳每筆資料的內容 (需把cell 換為自訂class名稱)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 判斷記憶體池有無閒置記憶體可用 若有則回傳 沒有則產生一個新的
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Ch7_MyCell
        cell.label?.text = list[indexPath.row].title
        cell.favoriteSwitch.isOn = list[indexPath.row].isFavorite
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
//        tableView.isEditing = true
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
//        return .none
        return .delete
    }
    
    /* 7-5 刪除儲存格 ---------------------------------------------*/
    //實作 commit: forRowAt: (需關閉編輯模式 editingStyleForRowAt不可設為.none)
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        list.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    // 實作titleForDeleteConfirmationButtonForRowAt 可調整刪除按鈕的文字
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "刪除"
    }

    /* 7-6 表格重新整理 -------------------------------------------*/
    // 在需要重新整理的時候呼叫 tableView.reloadData()

    /* 7-7 自訂儲存格 ---------------------------------------------*/
    // 在Table View Cell加入 label、switch
    // 專案中加入自訂Cell類別
    // 將Table View Cell面板內的 Custon Cell 更改為自訂Cell
    // 拖曳label、switch到自訂Cell類別 設定IBOutlet屬性
    // cellForRowAt func內的 取cell 後方加入 "as! 自訂Cell類別名稱"
    // 調整cell內的components設定
}
