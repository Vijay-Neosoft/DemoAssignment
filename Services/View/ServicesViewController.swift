//
//  ServicesViewController.swift
//  DemoUI
//
//  Created by NeoSOFT on 03/07/23.
//

import UIKit

class ServicesViewController: UIViewController {
    
    // MARK:- Outlets
    @IBOutlet weak var serviceTableView: UITableView!
    
    var spaceBetweenSection = 20.0
    
    var viewModel = ServicesViewModel()
    
    // MARK:- ViewDidLoad Method
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

// MARK:- UITableViewDatasource & UITableViewDelegate method
extension ServicesViewController:UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
       // return serViceArray.count
        return viewModel.getServicesArray().count
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return serViceArray[section].count
        return viewModel.getServicesArray()[section].count
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCount = 0
        if section == 0 {
           // rowCount = viewmodel.serViceArray.count
            rowCount = viewModel.getServicesArray().count
        }
        if section == 1 {
          //  rowCount = serViceArray.count
            rowCount = viewModel.getServicesArray().count
        }
        return rowCount
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < viewModel.headerTitles.count {
            return viewModel.headerTitles[section]
        }
//        if section < headerTitles.count {
//            return headerTitles[section]
//        }
        
        return nil
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell  = tableView.dequeueReusableCell(withIdentifier:Identifiers.ServicesTableViewCell.rawValue, for: indexPath) as? ServicesTableViewCell else {
            return  UITableViewCell()
        }
        cell.serviceIconImage.image = UIImage(named:viewModel.iconImage[indexPath.section][indexPath.row])
        cell.serviceNameLabel.text = viewModel.getServicesArray()[indexPath.section][indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        (spaceBetweenSection/2)
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        (spaceBetweenSection/2)
    }
}
