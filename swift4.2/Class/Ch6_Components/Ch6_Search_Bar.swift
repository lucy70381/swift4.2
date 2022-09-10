//
//  Ch6_Search_Bar.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/24.
//

import UIKit

class Ch6_Search_Bar: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // 拖曳一個 Search Bar
    // 拉藍線到 View Controller選 delegate
    // 讓類別符合 UISearchBarDelegate協定
    // 屬性面板 勾選 顯示書籤與取消按鈕
    
    // 實作 searchBarBookmarkButtonClicked
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        label.text = "按下書籤按鈕"
    }
    
    // 實作 searchBarCancelButtonClicked
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        label.text = "按下取消按鈕"
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        label.text = searchText
    }
   
}
