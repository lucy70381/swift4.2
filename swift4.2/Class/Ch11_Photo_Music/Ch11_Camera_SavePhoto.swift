//
//  Ch11_Camera_SavePhoto.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/10.
//

import UIKit

class Ch11_Camera_SavePhoto: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 在Info.plist 新增 Privacy - Camera Usage Description 詢問是否授權使用相機
        // 在Info.plist 新增 Privacy - Photo Library Additions Usage Description 詢問是否授權將相片儲存
        
        // 加入 UINavigationControllerDelegate協定
        // 加入 UIImagePickerControllerDelegate協定
    }
    
    // 實作 touchesEnded(_:with:)
    // 當使用者點一下螢幕時會呼叫
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 檢查裝置是否具備拍照功能
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            
            // 設定相片來源為相機
            // 亦可經由 .photoLibrary, savedPhotosAlbum
            imagePicker.sourceType = .camera
            imagePicker.delegate = self
            
            // 開啟拍照介面
            show(imagePicker, sender: self)
        }
    }
    
    // imagePickerController(_:didFinishPickingMediaWithInfo:)
    // 當使用者按下拍照時呼叫
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // 取得拍下來的照片
        let image = info[.originalImage] as! UIImage
        
        // 將相片存檔
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        
        dismiss(animated: true, completion: nil)
    }
}
