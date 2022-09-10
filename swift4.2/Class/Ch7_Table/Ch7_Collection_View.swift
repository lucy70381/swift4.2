//
//  Ch7_Collection_View.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/26.
//

import UIKit

class Ch7_Collection_View: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var list = [(up: String, down: String)]()

    override func viewDidLoad() {
        super.viewDidLoad()

        list.append(("1", "AAA"))
        list.append(("2", "BBB"))
        list.append(("3", "CCC"))
    }
    
    
    //Collection View特色: 資料可隨著螢幕寬度自動改變/調整
    
    // 拖曳一個 Collection View
    // 在Cell內加入兩個Label 分別將tag設定為 100及200
    // 將儲存格定義Identifier為 Cell
    // Collection View拉藍線到View Controller 選取delegate、dataSource
    // class 加入UICollectionViewDelegate, UICollectionViewDataSource協定
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        let upLabel = cell.viewWithTag(100) as? UILabel
        let downLabel = cell.viewWithTag(200) as? UILabel
        
        upLabel?.text = list[indexPath.row].up
        downLabel?.text = list[indexPath.row].down
        
        return cell
    }
}
