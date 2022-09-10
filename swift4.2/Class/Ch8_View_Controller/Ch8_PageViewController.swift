//
//  Ch8_PageViewController.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/31.
//

import UIKit

// 符合 UIPageViewControllerDataSource 協定
class Ch8_PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var list = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        // 若不想用翻頁動畫 可將屬性面板 Transition Style 設為 Scroll
        
        // 拖曳三個 View Controller 分別將Storyboard設為 vc1 vc2 vc3
        // 並依序加入list
        list.append((storyboard?.instantiateViewController(withIdentifier: "vc1"))!)
        list.append((storyboard?.instantiateViewController(withIdentifier: "vc2"))!)
        list.append((storyboard?.instantiateViewController(withIdentifier: "vc3"))!)
        
        // 指定Page View Controller 第一個畫面用哪一個 View Controller
        setViewControllers([list[0]], direction: .forward, animated: true, completion: nil)
        
        // 更改小圓點顏色
        let pageControl = UIPageControl.appearance()
        pageControl.pageIndicatorTintColor = UIColor.orange
        pageControl.currentPageIndicatorTintColor = UIColor.blue
    }

    // 上一頁 邊界檢查
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if let index = list.firstIndex(of: viewController) {
            if index >  0 {
                return list[index - 1]
            }
        }
        
        return nil
    }
    
    // 下一頁 邊界檢查
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if let index = list.firstIndex(of: viewController) {
            if index < list.count - 1 {
                return list[index + 1]
            }
        }
        
        return nil
    }
    
    // 若希望底下提示現在是第幾頁的小圓點 (僅Scroll動畫適用)
    // 實作 presentationCount presentationIndex
    // 顯示多少個圓點
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return list.count
    }
    
    // 一開始的頁數 需與setViewControllers函數的第一個參數 陣列索引值一致
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    // 若不希望小圓點背景為黑色 須將底下的Scroll View大小設為全螢幕
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        for v in view.subviews {
            if v is UIScrollView {
                v.frame = view.bounds
                break
            }
        }
    }
}
