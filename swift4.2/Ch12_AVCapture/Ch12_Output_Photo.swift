//
//  Ch12_Output_Photo.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/14.
//

import UIKit
import AVFoundation

class Ch12_Output_Photo: UIViewController, AVCapturePhotoCaptureDelegate {
    
    // import AVFoundation
    
    // 加入一個Button
    
    @IBOutlet weak var forPreview: UIImageView!
    
    // 處理輸入裝置->輸出間的資料串動
    let session = AVCaptureSession()
    
    // 設定好輸入端擷取裝置
    let deviceInput = Ch12_Input_Output()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 設定預覽圖層 - 此為自訂函數
        settingPreviewLayer()
        // 將後置廣角鏡頭連接到協調器
        session.addInput(deviceInput.backWildAngleCamera!)
        
        // 設定輸出品質為最高解析度
        session.sessionPreset = .photo
        // 設定輸出端格視為照片
        session.addOutput(AVCapturePhotoOutput())
        
        // 將資料開始流入
        session.startRunning()
    }
    
    @IBAction func takeButton(_ sender: Any) {
        let setting = AVCapturePhotoSettings()
        setting.flashMode = .on
        
        let output = session.outputs.first! as! AVCapturePhotoOutput
        
        // class加入 AVCapturePhotoCaptureDelegate
        output.capturePhoto(with: setting, delegate: self)
    }
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        let image = UIImage(data: photo.fileDataRepresentation()!)
        
        // 照片存檔
        UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
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
