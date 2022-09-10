//
//  Ch8_ViewController2.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/31.
//

import UIKit

class Ch8_ViewController2: UIViewController {

    @IBOutlet weak var label: UILabel!
    var tmp: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = tmp
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
