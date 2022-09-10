//
//  Ch12_Change_Camera_Position.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/13.
//

import UIKit
import AVFoundation

class Ch12_Change_Camera_Position: UIViewController {

    @IBOutlet weak var forPreview: UIView!
    
    // 處理輸入裝置->輸出間的資料串動
    let session = AVCaptureSession()
    
    // 設定好輸入端擷取裝置
    let deviceInput = Ch12_Input_Output()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // import AVFoundation
        
        // 加入一個View 與 Switch
        
        // 設定預覽圖層 - 此為自訂函數
        settingPreviewLayer()
        // 將後置廣角鏡頭連接到協調器
        session.addInput(deviceInput.backWildAngleCamera!)
        // 將資料開始流入
        session.startRunning()
    }
    
    @IBAction func frontBackToggle(_ sender: UISwitch) {
        
        // 修改 session開始
        session.beginConfiguration()
        
        // 將現有 input清除
        session.removeInput(session.inputs.last!)
        
        if sender.isOn {
            // 後置鏡頭
            session.addInput(deviceInput.backWildAngleCamera!)
        } else {
            // 前置鏡頭
            session.addInput(deviceInput.frontWildAngleCamera!)
        }
        
        // 確認修改
        session.commitConfiguration()
    }
    
    // 設定預覽畫面
    func settingPreviewLayer() {
        let previewLayer = AVCaptureVideoPreviewLayer()
        previewLayer.frame = forPreview.bounds
        previewLayer.session = session
        previewLayer.videoGravity = .resizeAspectFill
        forPreview.layer.addSublayer(previewLayer)
    }

}
