//
//  Ch8_TableViewController2.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/31.
//

import UIKit

class Ch8_TableViewController2: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個 Split View Controller
        // 拉藍線 到 View Controller 上 選擇 detail view controller
        
        // 將Table View Controller上的儲存格型態 由Custom改為 Basic
        // 將table 改為靜態儲存格
        
        // 將儲存格改為 台北 台中 高雄
        // 各別拉到 View Controller 選擇 Show Detail(Slection Segue)
        
        // 新增TableViewController自訂類別
        // 拖曳一個Label到 View Controller
        
        // 新增ViewController自訂類別
        // 拉藍線 建立 Label IBOutlet屬性
        // 再宣告一個tmp 變數 接收點擊的字串
        
        // 插入 Navigation Controller
        // 於 Split View Controller與 View Controller之間
        // Split View Controller 拉藍線到 Navigation Controller 選擇 detail view controller
        // 刪除Navigation Controller附帶的View Controller
        // 改連接至原先的View Controller 選擇 root view controller
        
        // 將 台北 台中 高雄label 重拉至 Navigation Controller (Show Detail)
        // 重新修改 prepare
        
    }

    // 加入prepare(for: sender)函數
    // 將使用者點選的cell title傳至View Controller的tmp
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = tableView.cellForRow(at: tableView.indexPathForSelectedRow!)
        
//        let vc = segue.destination as! Ch8_ViewController2
        
        let nvc = segue.destination as! UINavigationController
        let vc = nvc.topViewController as! Ch8_ViewController2
        vc.tmp = cell?.textLabel?.text
        
        
        
    }

}
