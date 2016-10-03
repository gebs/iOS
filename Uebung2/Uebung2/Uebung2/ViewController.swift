//
//  ViewController.swift
//  Uebung2
//
//  Created by iOSKurs on 03.10.16.
//  Copyright © 2016 iOSKurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var sliderlabel: UILabel!
    @IBOutlet weak var mySpinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func SilderValueChanged(_ sender: UISlider) {
        self.sliderlabel.text = String(sender.value)
    }
    @IBAction func SegmentChanged(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 1 {
            self.view.backgroundColor = UIColor.white
        }else{
            self.view.backgroundColor = UIColor.gray
        }
    }
    @IBAction func StartSpinner(_ sender: UIButton) {
        if mySpinner.isAnimating{
            mySpinner.stopAnimating()
            sender.setTitle("Start Spinning", for: UIControlState.normal)
        }else{
            mySpinner.startAnimating()
            sender.setTitle("Stop Spinning", for: UIControlState.normal)
        }
        
    }
    

}

