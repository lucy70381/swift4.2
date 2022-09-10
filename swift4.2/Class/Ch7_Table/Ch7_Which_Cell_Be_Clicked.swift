//
//  Ch7_Which_Row_Be_Clicked.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/25.
//

import UIKit

class Ch7_Which_Cell_Be_Clicked: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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
}
