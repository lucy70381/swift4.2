//
//  Ch8_PlayerViewController.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/31.
//

import UIKit
import AVKit
import AVFoundation

class Ch8_PlayerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // iPad預設支援子母畫面
        // 若要關閉 可將 allowsPictureInPicture 設為false
    }
    
    // 拖曳一個AVKit Player View Controller
    // 加入影音擋到專案中
    // 檢查Bundle Resources項目中是否有此檔案 若沒有則手動加入
    
    // import AVKit
    // import AVFoundation

    // 抓取 test.mov影音檔
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = Bundle.main.url(forResource: "test", withExtension: "mov") {
            let vc = segue.destination as! AVPlayerViewController
            vc.player = AVPlayer(url: url)
        }
    }
}
