//
//  Ch7_MyCell.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/8/25.
//

import UIKit

class Ch7_MyCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var favoriteSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
