//
//  Ch11_MusicProgress.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/10.
//

import UIKit
import MediaPlayer

class Ch11_MusicProgress: UIViewController {

    var audio: AVAudioPlayer?
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 加入一個Slider
        // import MediaPlayer
        
        do {
            let url = Bundle.main.url(forResource: "music", withExtension: "mp3")
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            audio = try AVAudioPlayer(contentsOf: url!)
            if audio != nil {
                if audio!.prepareToPlay() {
                    print("開始播放音樂")
                    audio!.play()
                    
                    slider.minimumValue = 0
                    slider.maximumValue = Float(audio!.duration)
                    slider.value = 0
                    
                    // 每一秒呼叫一次
                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
                        self.ticker(timer: timer)
                    }
                }
            }
        } catch {
            print(error)
        }
    }
    
    // 使進度條與播放進度一致
    func ticker(timer: Timer) {
        slider.value = Float(audio!.currentTime)
        if !audio!.isPlaying {
            print("音樂結束")
            timer.invalidate()
        }
    }
    
    // 使用者可調整slider的值 改變音樂的播放進度
    @IBAction func sliderValueChanged(_ sender: Any) {
        audio?.currentTime = Double(slider.value)
    }
}
