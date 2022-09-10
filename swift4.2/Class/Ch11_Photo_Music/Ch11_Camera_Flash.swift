//
//  Ch11_Camera_Flash.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/10.
//

import UIKit

class Ch11_Camera_Flash: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            print("本裝置具拍照功能")
            
            if UIImagePickerController.isCameraDeviceAvailable(.front) {
                print("有前方鏡頭")
            }
            
            if UIImagePickerController.isCameraDeviceAvailable(.rear) {
                print("有後方鏡頭")
            }
            
            if UIImagePickerController.isFlashAvailable(for: .front) {
                print("有前方閃光燈")
            }
            
            if UIImagePickerController.isFlashAvailable(for: .rear) {
                print("有後方閃光燈")
            }
        }
    }
    
}
