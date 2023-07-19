//
//  HomeSecondTableViewCell.swift
//  DemoUI
//
//  Created by NeoSOFT on 05/07/23.
//

import UIKit

class HomeSecondTableViewCell: UITableViewCell {

    //MARK:- IBOutlets
    @IBOutlet weak var transactionStatus: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var refrenceNumber: UILabel!
    @IBOutlet weak var trsansactionNumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
