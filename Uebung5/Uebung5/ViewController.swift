//
//  ViewController.swift
//  Uebung5
//
//  Created by iOSKurs on 24.10.16.
//  Copyright © 2016 iOSKurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSubTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.lblSubTitle.text = NSLocalizedString("SubTitle", comment: "SubTitle")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

