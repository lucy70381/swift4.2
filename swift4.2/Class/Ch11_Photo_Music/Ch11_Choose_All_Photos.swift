//
//  Ch11_Choose_All_Photos.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/10.
//

import UIKit
import Photos

class Ch11_Choose_All_Photos: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // import Photos
    }
    
    func fetchAllPhotos() -> [UIImage] {
        var images = [UIImage]()
        
        let fetchResult = PHAsset.fetchAssets(with: .image, options: nil)
        
        for n in 0 ..< fetchResult.count {
            let imageAsset = fetchResult.object(at: n)
            let size = CGSize(width: imageAsset.pixelWidth, height: imageAsset.pixelHeight)
            
            PHImageManager.default().requestImage(for: imageAsset, targetSize: size, contentMode: .default, options: nil) { (image, nil) in
                images.append(image!)
            }
        }
        
        return images
    }
    
}
