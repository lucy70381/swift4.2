//
//  Ch7_Table.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/25.
//

import UIKit

// 拖曳一個 Table View
// 拖曳 Table View Cell 放進去
// 修改 Table View Cell Identifier 為 Cell
// Table View 拉藍線到 View Controller 選取 dataSource與 delegate
// class 後方加入 UITableViewDataSource, UITableViewDelegate

class Ch7_Use_Table_Component: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
}
