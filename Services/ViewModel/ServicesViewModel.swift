//
//  ServicesViewModel.swift
//  DemoUI
//
//  Created by Neosoft on 17/07/23.
//

import Foundation
class ServicesViewModel: NSObject {
    
       let serviceArray = [["Invoices","Inquire","SendInvoice","GenerateQR"],["Orders","Inquire"]]
      var iconImage = [["invoice","SearchImg","SendIcon","QR"],["OrderIcon","SearchImg"]]
      let headerTitles = ["", ""]
    
    func getServicesArray() -> [[String]] {
        return serviceArray
    }
    
}
