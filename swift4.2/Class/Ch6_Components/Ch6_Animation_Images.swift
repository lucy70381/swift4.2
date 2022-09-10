//
//  Ch6_Animation_Image.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/20.
//

import UIKit

class Ch6_Animation_Images: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 加入五張圖片
        var images = [UIImage]()
        
        for i in 1...5 {
            let name = "capoo\(i)"
            images.append(UIImage(named: name)!)
        }
        
        imageView.animationImages = images
        
        // 設定10秒內播完
        imageView.animationDuration = 10
        
        // 設定重複2次
        // imageView.animationRepeatCount = 2
        
        // 開始播放
        imageView.startAnimating()
    }
}
