//
//  Ch9_AllTVC.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/1.
//

import UIKit

class Ch9_AllTVC: UITableViewController {
    
    // 拖曳一個 Navigation Controller 設為起始畫面
    // 指定class Ch9_AllTVC.swift
    
    // 在拖曳一個 Table View Controller
    // StoryboardID設為 result
    // 指定class Ch9_resultTVC.swift
    
    //將兩個 Table View Controller儲存格 identifier設為Cell
    
    // 開啟 AppDelegate.swift 將要顯示的list資料放於那
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var searchCtrl: UISearchController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "result") {
            // 初始化搜尋列 指定搜尋結果是由哪一個view controller呈現
            searchCtrl = UISearchController(searchResultsController: vc)
            
            // 指定哪一個class來處理 即時搜尋
            searchCtrl.searchResultsUpdater = vc as? UISearchResultsUpdating
            
            // 將搜尋列放到表格的標題列上
            tableView.tableHeaderView = searchCtrl.searchBar
            
            // 將Table View Controller 屬性面板 -> Under Top Bars勾勾移除
            // 若忘了移除 上方會預留導覽列空間
            
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDelegate.list.count
    }

    // 設定cell資料
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = appDelegate.list[indexPath.row]
         
        return cell
    }
}
