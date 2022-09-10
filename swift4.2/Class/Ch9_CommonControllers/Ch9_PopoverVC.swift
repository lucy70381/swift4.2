//
//  Ch9_PopoverVC.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/1.
//

import UIKit

class Ch9_PopoverVC: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 拖曳一個 View Controller
        // 加入一個 Date Picker constraint設為全螢幕
        
        // View Controller -> Size面板 -> Simulated Size 改為Freedom (250x160)
        // 屬性面板 -> 將 Use Preferred Explicit Size打勾
        
        // 加入一個Button 拉藍線到 popover view Controller 選擇 Present As Popover
        // View Controller 類別加入UIPopoverPresentationControllerDelegate協定
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let popoverCtrl = segue.destination.popoverPresentationController
        
        // UIButton 與 UIBarButtonItem 處理方式不同
        if sender is UIButton {
            popoverCtrl?.sourceRect = (sender as! UIButton).bounds
        } else if sender is UIBarButtonItem {
            popoverCtrl?.barButtonItem = sender as? UIBarButtonItem
        }
        
        popoverCtrl?.delegate = self
    }
    
    // 要求iOS一律以popover呈現 (關閉判斷裝置)
    // iPhone 預設以全螢幕顯示
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    // 預設點擊popover範圍外會關閉視窗
    // 若不想關閉實作 presentationControllerShouldDismiss return false
    func presentationControllerShouldDismiss(_ presentationController: UIPresentationController) -> Bool {
        return true
    }
    
    // 若想知道視窗已經關閉 可實作 popoverPresentationControllerDidDismissPopover
    // 關閉時會呼叫此函數
    func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) {
        
    }
}
