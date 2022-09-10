//
//  Ch11_Choose_Photo.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/10.
//

import UIKit

class Ch11_Choose_Photo: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 在Info.plist 新增 Privacy - Photo Library Additions Usage Description 詢問是否授權將相片儲存
        
        // 加入 UINavigationControllerDelegate協定
        // 加入 UIImagePickerControllerDelegate協定
    }
    
    @IBAction func onClick(_ sender: UIButton) {
        let imagePickerVC = UIImagePickerController()
        
        // 設定相片的來源為裝置內的相本
        imagePickerVC.sourceType = .photoLibrary
        imagePickerVC.delegate = self
        
        // 設定顯示模式為popover
        imagePickerVC.modalPresentationStyle = .popover
        let popover = imagePickerVC.popoverPresentationController
        
        // 設定popover視窗與哪一個view元件有關聯
        popover?.sourceView = sender
        
        // 處理popover的箭頭位置
        popover?.sourceRect = sender.bounds
        popover?.permittedArrowDirections = .any
        
        show(imagePickerVC, sender: self)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        imageView.image = image
        dismiss(animated: true, completion: nil)
    }
}
