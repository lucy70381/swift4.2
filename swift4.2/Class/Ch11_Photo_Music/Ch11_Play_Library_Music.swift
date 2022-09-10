//
//  Ch11_Play_Library_Music.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/13.
//

import UIKit
import MediaPlayer

class Ch11_Play_Library_Music: UIViewController, MPMediaPickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 在info.plist增加 Privacy - Media Library Usage Description
        // 詢問使用者是否授權使用媒體資料
        
        // import MediaPlayer
        // 加入 MPMediaPickerControllerDelegate協定
        
    }
    
    @IBAction func onClick(_ sender: Any) {
        let picker = MPMediaPickerController(mediaTypes: .music)
        
        // 可以多選
        picker.allowsPickingMultipleItems = true
        picker.delegate = self
        
        show(picker, sender: self)
    }
    
    // 實作 mediaPicker(_:didPickMediaItems:)
    // 當使用者從音樂列表上選取音樂後會呼叫
    // 選取的音樂會存放於mediaItemCollection參數傳進來
    func mediaPicker(_ mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection) {
        
        // .applicationMusicPlayer 無法在背景播放音樂
        let player: MPMusicPlayerController = .applicationMusicPlayer
        
        player.setQueue(with: mediaItemCollection)
        player.play()
        
        dismiss(animated: true, completion: nil)
    }
    
    // 實作 mediaPickerDidCancel(_:)
    // 使用者在音樂列表上 按下完成後 會呼叫
    func mediaPickerDidCancel(_ mediaPicker: MPMediaPickerController) {
        
        // 關閉音樂列表視窗
        dismiss(animated: true, completion: nil)
    }
}
