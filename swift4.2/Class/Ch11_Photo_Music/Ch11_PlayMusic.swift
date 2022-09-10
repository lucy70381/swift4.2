//
//  Ch11_PlayMusic.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/10.
//

import UIKit
import MediaPlayer

class Ch11_PlayMusic: UIViewController {

    var audio: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()

        // import MediaPlayer
        
        // 向訊息中心註冊音樂被電話中斷或中斷恢復時要呼叫的函數
        NotificationCenter.default.addObserver(self, selector: #selector(audioInterrupted(_:)), name: AVAudioSession.interruptionNotification, object: nil
        )
        
        do {
            let url = Bundle.main.url(forResource: "music", withExtension: "mp3")
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            audio = try AVAudioPlayer(contentsOf: url!)
            if audio != nil {
                if audio!.prepareToPlay() {
                    print("開始播放音樂")
                    audio!.play()
                }
            }
        } catch {
            print(error)
        }
    }
    
    // 此函數透過傳進來的notification判斷音樂是中斷或中斷結束
    @objc func audioInterrupted(_ notification: NSNotification) {
        guard audio != nil, let userInfo = notification.userInfo else {
            return
        }
        
        let type_tmp = userInfo[AVAudioSessionInterruptionTypeKey] as! NSNumber
        let type = AVAudioSession.InterruptionType(rawValue: type_tmp.uintValue)
        
        switch type! {
        case .began:
            print("音樂中斷")
        case .ended:
            print("中斷原因結束")
            
            let option_tmp = userInfo[AVAudioSessionInterruptionOptionKey] as! NSNumber
            let option = AVAudioSession.InterruptionOptions(rawValue: option_tmp.uintValue)
            
            if option == .shouldResume && audio!.prepareToPlay() {
                audio?.play()
            }
        }
    }
}
