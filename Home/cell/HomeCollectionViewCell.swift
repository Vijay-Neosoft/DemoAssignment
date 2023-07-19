//
//  HomeCollectionViewCell.swift
//  DemoUI
//
//  Created by NeoSOFT on 04/07/23.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {

    //MARK:- IBOutlets
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var invoiceNumber: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var sideImage: UIImageView!
    @IBOutlet weak var invoicesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func layoutSubviews() {
            super.layoutSubviews()
            setupShadow()
        }
        //MARK:- Set the shadow properties
        private func setupShadow() {
            
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOpacity = 0.5
            layer.shadowOffset = CGSize(width: 2, height: 2)
            layer.shadowRadius = 4
            layer.masksToBounds = false
            //MARK:- Optional Add a corner radius to the cell
            mainView.layer.cornerRadius = 8
            mainView.layer.masksToBounds = true
        }
}

