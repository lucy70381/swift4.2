//
//  Ch11_Get_Music_Info.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/13.
//

import UIKit
import MediaPlayer

class Ch11_Get_Music_Info: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    let player = MPMusicPlayerController.applicationMusicPlayer
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 在info.plist增加 Privacy - Media Library Usage Description
        
        // 加入 ImageView顯示專輯封面
        // 加入一個按鈕來跳到下一首歌曲
        
        NotificationCenter.default.addObserver(self, selector: #selector(playingItemChanged(_:)), name: NSNotification.Name.MPMusicPlayerControllerNowPlayingItemDidChange, object: nil)
        
        // 將裝置內所有歌曲加入到播放清單中
        player.setQueue(with: .songs())
        
        // 播放時產生訊息
        player.beginGeneratingPlaybackNotifications()
        player.play()
    }
    
    // 取得目前播放清單中的歌曲資訊
    @objc func playingItemChanged(_ notification: NSNotification) {
        var mediaItem: MPMediaItem?
        
        repeat {
            mediaItem = player.nowPlayingItem
        } while mediaItem == nil
        
        if let artwork = mediaItem?.value(forProperty: MPMediaItemPropertyArtwork) {
            // 專輯圖片
            imageView.image = (artwork as AnyObject).image(at: imageView.bounds.size)
        }
        
        let albumTitle = mediaItem?.value(forProperty: MPMediaItemPropertyAlbumTitle) as? String
        let songTitle = mediaItem?.value(forProperty: MPMediaItemPropertyTitle) as? String
        let singer = mediaItem?.value(forProperty: MPMediaItemPropertyArtist) as? String
        
        print("專輯名稱：\(albumTitle)")
        print("歌曲名稱：\(songTitle)")
        print("歌手姓名：\(singer)")
    }
    
    // 回到上一首歌
    @IBAction func nextMusic(_ sender: Any) {
//        player.skipToPreviousItem()
        player.skipToNextItem()
    }
    

}
