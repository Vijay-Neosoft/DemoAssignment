//
//  HomeTableViewCell.swift
//  DemoUI
//
//  Created by NeoSOFT on 04/07/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var homeCollectionView: UICollectionView!
    @IBOutlet weak var lastdateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        register()
    }

    //MARK:- UInib register Methods
    func register(){
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        homeCollectionView.register(UINib(nibName:Identifiers.HomeCollectionViewCell.rawValue, bundle: nil), forCellWithReuseIdentifier: Identifiers.HomeCollectionViewCell.rawValue)
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
//MARK:- UICollectionView Delegate & DataSource Methods
extension HomeTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = homeCollectionView.dequeueReusableCell(withReuseIdentifier:Identifiers.HomeCollectionViewCell.rawValue, for: indexPath) as? HomeCollectionViewCell  else {
            return UICollectionViewCell()
        }
        cell.costLabel.text = "51.220LE"
        cell.sideImage.image = UIImage(named: "invoice")
        cell.invoicesLabel.text = "Total Invoices"
        cell.invoiceNumber.text = "1723"
        
        return cell 
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

   return CGSize(width: 160, height: 120)
    }

  

}
