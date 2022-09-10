//
//  Ch6_ScrollView.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/20.
//

import UIKit
// scrollView拉藍線到View 加入delegate
// 加入 UIScrollViewDelegate
class Ch6_ScrollView: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 載入圖片並取得圖片大小
        imageView.image = UIImage(named: "capoo1")
        let size = imageView.image!.size
        
        //讓scrollView大小與圖片一致
        scrollView.contentSize = size
        
        // 計算能讓圖片完整顯示於scrollView之倍率
        let WScale = scrollView.frame.size.width / size.width
        let HScale = scrollView.frame.size.height / size.height
        let scale = min(WScale, HScale)
        
        scrollView.minimumZoomScale = scale
        scrollView.maximumZoomScale = 0.8
        
        scrollView.zoomScale = scale
    }
    
    // 實作 viewForZooming 當使用者放大/縮小手勢時 回傳需要放大縮小的UIView
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        moveTocenter()
        return imageView
    }
    
    //將圖片移至中間
    func moveTocenter() {
        let imageViewSize = imageView.frame.size
        let scrollViewSize = scrollView.frame.size
        var wPadding: CGFloat = 0
        var hPadding: CGFloat = 0
        
        if imageViewSize.width < scrollViewSize.width {
            wPadding = (scrollViewSize.width - imageViewSize.width) / 2
        }
        
        if imageViewSize.height < scrollViewSize.height {
            wPadding = (scrollViewSize.height - imageViewSize.height) / 2
        }
        
        scrollView.contentInset = UIEdgeInsets(top: hPadding, left: wPadding, bottom: hPadding, right: wPadding)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        moveTocenter()
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        moveTocenter()
    }
}
