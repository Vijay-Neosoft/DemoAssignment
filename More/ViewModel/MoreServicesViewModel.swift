//
//  MoreServicesViewModel.swift
//  DemoUI
//
//  Created by NeoSOFT on 17/07/23.
//

import Foundation


class MoreServicesViewModel: NSObject {
    
       let serviceArray = ["Suggest ideas","Complaints","Language Setting","MyProfile","Logout"]
    var iconImage = ["Idea","complaints","languagesetting","profile","Logout"]
   
    
    func getServicesArray() -> [String] {
        return serviceArray
    }
    
}
