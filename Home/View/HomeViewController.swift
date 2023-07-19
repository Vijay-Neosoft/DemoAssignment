//
//  HomeViewController.swift
//  DemoUI
//
//  Created by NeoSOFT on 03/07/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var homeTableView: UITableView!
    var homeviewmodel = HomeViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControl.addUnderlineForSelectedSegment()
        register()
    }
    func register(){
        let nib = UINib(nibName: Identifiers.HomeSecondTableViewCell.rawValue,bundle: nil)
        let nib2 = UINib(nibName: Identifiers.HomeTableViewCell.rawValue,bundle: nil)
        
        homeTableView.register(nib,forCellReuseIdentifier:Identifiers.HomeSecondTableViewCell.rawValue)
        homeTableView.register(nib2,forCellReuseIdentifier:Identifiers.HomeTableViewCell.rawValue)
        homeTableView.sectionHeaderTopPadding = 0
        homeTableView.register(UINib(nibName:Identifiers.HomeHeaderView.rawValue, bundle: .main), forHeaderFooterViewReuseIdentifier: Identifiers.HomeHeaderView.rawValue)
    }
    
    @IBAction func segmentControlAction(_ sender: Any) {
        segmentControl.changeUnderlinePosition()
    }
}
extension HomeViewController:UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        } else {
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Identifiers.HomeSecondTableViewCell.rawValue, for: indexPath) as? HomeSecondTableViewCell else {
                return UITableViewCell()
            }
            cell.refrenceNumber.text = homeviewmodel.referenceNumber
            cell.trsansactionNumber.text = homeviewmodel.transactionNumber
            cell.price.text = homeviewmodel.price
            cell.transactionStatus.text = homeviewmodel.transactionStatus
            return cell
        }else{
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Identifiers.HomeTableViewCell.rawValue, for: indexPath) as? HomeTableViewCell else {
                return UITableViewCell()
            }
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0{
            return nil
        }else{
            let headerView = homeTableView.dequeueReusableHeaderFooterView(withIdentifier: Identifiers.HomeHeaderView.rawValue) as! HomeHeaderView
            headerView.lastTreansactionLabel.text = "Last Transactions"
            return headerView
        }
        
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 0
        }else{
            return 50
        }
       
    }
    
}
