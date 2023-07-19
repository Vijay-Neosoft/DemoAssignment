//
//  MoreServicesViewController.swift
//  DemoUI
//
//  Created by NeoSOFT on 03/07/23.
//

import UIKit

class MoreServicesViewController: UIViewController {
    // MARK:- Outlets
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    var viewModel = MoreServicesViewModel()
    private let spacing:CGFloat = 30.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        self.collectionViewOutlet?.collectionViewLayout = layout
    }
    
}
extension  MoreServicesViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.getServicesArray().count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier:Identifiers.MoreServicesCollectionViewCell.rawValue, for: indexPath) as? MoreServicesCollectionViewCell  else {
            return UICollectionViewCell()
        }
        cell.serviceName.text = viewModel.getServicesArray()[indexPath.row]
        //serViceArray[indexPath.row]
        cell.serviceImage.image = UIImage(named: viewModel.iconImage[indexPath.row])
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.white.cgColor
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 3
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let numberOfItemsPerRow = 2.0
        let spacingBetweenCells = 30.0
        //Amount of total spacing in a row
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells)
        let width = (self.collectionViewOutlet.bounds.width - totalSpacing)/numberOfItemsPerRow
        return CGSize(width: width, height: width)
        
    }
    
}
