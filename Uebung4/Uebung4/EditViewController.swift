//
//  EditViewController.swift
//  Uebung4
//
//  Created by iOSKurs on 17.10.16.
//  Copyright © 2016 iOSKurs. All rights reserved.
//

import UIKit

class EditViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var txtFirstname: UITextField!
    @IBOutlet weak var txtPostalCode: UITextField!
    @IBOutlet weak var txtLastname: UITextField!
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.editItem {
            if let first = self.txtFirstname {
                first.text = detail.firstName
            }
            if let last = self.txtLastname{
                last.text = detail.lastName
            }
            if let plz = self.txtPostalCode{
                plz.text = String(detail.plz)
            }
            
        }
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.configureView()
        self.txtPostalCode.delegate = self
        self.txtFirstname.delegate = self
        self.txtLastname.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    var editItem: PersonData? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    @IBAction func saveAndCloseClicked(_ sender: UIButton) {
        self.editItem?.firstName = txtFirstname.text!
        self.editItem?.lastName = txtLastname.text!
        self.editItem?.plz = Int(txtPostalCode.text!)!
        
        self.dismiss(animated: true, completion: nil)

    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
