//
//  AccountViewController.swift
//  DemoUI
//
//  Created by NeoSOFT on 03/07/23.
//

import UIKit
import DropDown

class AccountViewController: UIViewController {

    // MARK:- Global Varible
    var paymentStatusDropdown = DropDown()
   
    // MARK:- Outlets
    @IBOutlet weak var DOBTextField: UITextField!
    @IBOutlet weak var paymetStatusDropDownButton: UIButton!
    @IBOutlet weak var emailaddressTextField: UITextField!
    @IBOutlet weak var mobileNumberTextfield: UITextField!
    @IBOutlet weak var customerNameTextField: UITextField!
    @IBOutlet weak var paymentStatusTextField: UITextField!
 
    // MARK:- ViewDidLoad Method
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDropDown(paymetStatusDropDownButton, and: paymentStatusDropdown, with: paymentStatusTextField)
        paymentStatusDropdown.dataSource =
          ["Paid","UnPaid","EMI"]
        DOBTextField.addInputViewDatePicker(target: self, selector: #selector(doneButtonPressed))
        // Do any additional setup after loading the view.
    }
    
    // MARK:- dropDownPaymentStatusButtonAction Method
    @IBAction func dropDownPaymentStatusButtonAction(_ sender: Any) {
        paymentStatusDropdown.show()
    }
    
   
    @objc func doneButtonPressed() {
        if let  datePicker = self.DOBTextField.inputView as? UIDatePicker {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            self.DOBTextField.text = dateFormatter.string(from: datePicker.date)
        }
        self.DOBTextField.resignFirstResponder()
     }
    
    // MARK:- setupDropDown Method
    func setupDropDown(_ button: UIButton,and dropDown: DropDown,with textField: UITextField) {
        dropDown.anchorView = textField
        
        dropDown.bottomOffset = CGPoint(x: 0, y: button.bounds.height)
        
        dropDown.dismissMode = .onTap
        
        dropDown.selectionAction = { [weak self] (index, item) in
            guard let self = self else{ return }
            if item == "No Options"{ return }
            textField.text = item
            self.paymentStatusDropdown.hide()
            
        }
    }
}
