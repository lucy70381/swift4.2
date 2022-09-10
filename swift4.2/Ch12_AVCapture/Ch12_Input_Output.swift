//
//  Ch12_Input_Output.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/13.
//

import UIKit
import AVFoundation

class Ch12_Input_Output: UIViewController {

    // 前廣角鏡頭
    var frontWildAngleCamera: AVCaptureDeviceInput?
    
    // 後置廣角鏡頭
    var backWildAngleCamera: AVCaptureDeviceInput?
    
    // 後置望遠鏡頭
    var backTelephotoCamera: AVCaptureDeviceInput?
    
    // 後置雙鏡頭
    var backDualCamera: AVCaptureDeviceInput?
    
    // 麥克風
    var microphone: AVCaptureDeviceInput?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 在Info.plist中加入 Privacy - Camera Usage Description
        // 在Info.plist中加入 Privacy - Photo Library Additions Usage Description
    
        // import AVFoundation
        
        getAllCamera()
        getMicrophone()
    }
    
    func getAllCamera() {
        let cameraDevices = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera, .builtInTelephotoCamera, .builtInDualCamera], mediaType: .video, position: .unspecified).devices
        
        for camera in cameraDevices {
            let inputDevice = try! AVCaptureDeviceInput(device: camera)
            
            if camera.deviceType == .builtInWideAngleCamera, camera.position == .front {
                frontWildAngleCamera = inputDevice
            }
            
            if camera.deviceType == .builtInWideAngleCamera, camera.position == .back {
                backWildAngleCamera = inputDevice
            }
            
            if camera.deviceType == .builtInTelephotoCamera, camera.position == .back {
                backTelephotoCamera = inputDevice
            }
            
            if camera.deviceType == .builtInDualCamera, camera.position == .back {
                backDualCamera = inputDevice
            }
            
            
        }
    }
    
    func getMicrophone() {
        if let mic = AVCaptureDevice.default(for: .audio) {
            microphone = try! AVCaptureDeviceInput(device: mic)
        }
    }
}
