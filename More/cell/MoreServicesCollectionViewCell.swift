//
//  MoreServicesCollectionViewCell.swift
//  DemoUI
//
//  Created by NeoSOFT on 04/07/23.
//

import UIKit

class MoreServicesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var serviceName: UILabel!
    @IBOutlet weak var serviceImage: UIImageView!
    
    @IBOutlet weak var mainView: UIView!
    
    override func layoutSubviews() {
            super.layoutSubviews()
            setupShadow()
        }
        
    
    private func setupShadow() {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.1
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowRadius = 4
        layer.masksToBounds = false
        //MARK:- Optional Add a corner radius to the cell
        mainView.layer.cornerRadius = 12
        mainView.layer.masksToBounds = true
    }

}
