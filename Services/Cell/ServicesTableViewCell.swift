//
//  ServicesTableViewCell.swift
//  DemoUI
//
//  Created by NeoSOFT on 03/07/23.
//

import UIKit

class ServicesTableViewCell: UITableViewCell {

    @IBOutlet weak var serviceIconImage: UIImageView!
    @IBOutlet weak var serviceNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
