//
//  DetailViewController.swift
//  Uebung4
//
//  Created by iOSKurs on 17.10.16.
//  Copyright © 2016 iOSKurs. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var lblFirstname: UILabel!
    @IBOutlet weak var lblLastname: UILabel!
    @IBOutlet weak var lblPostalCode: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let first = self.lblFirstname {
                first.text = detail.firstName
            }
            if let last = self.lblLastname{
                last.text = detail.lastName
            }
            if let plz = self.lblPostalCode{
                plz.text = String(detail.plz)
            }

        }
    }
    override func viewWillAppear(_ animated: Bool) {
        self.configureView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: PersonData? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    @IBAction func editClicked(_ sender: UIButton) {
        let view = self.storyboard?.instantiateViewController(withIdentifier: "EditView") as? EditViewController
        if view != nil{
            view!.editItem = detailItem
            self.navigationController?.present(view!, animated: true, completion: nil)
        }
    }

}

