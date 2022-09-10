//
//  Ch9_ModalPrepare.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/2.
//

import UIKit

class Ch9_ModalPrepare: UIViewController, UIAdaptivePresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination.presentationController
        vc?.delegate = self
    }
    
    
    // 不檢查裝置類型 一律以Form Sheet形式呈現
    // class 需符合UIAdaptivePresentationControllerDelegate協定
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
}
