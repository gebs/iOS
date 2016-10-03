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
    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.sliderlabel.text = String(mySlider.value)
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var isShown: Bool = false
    
    @IBAction func SilderValueChanged(_ sender: UISlider) {
        
        self.sliderlabel.text = String(sender.value)
        
        if (sender.value >= 90 && self.isShown == false)
        {
            self.isShown = true
            
            let alertController = UIAlertController( title: "Information",
                                                     message: "Ein Wert grösser als 90 angezeigt",
                                                     preferredStyle: .alert)
            let defaultAction = UIAlertAction(
                title: "OK", style: .cancel,
                handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            
        }
        else if sender.value <= 90
        {
        self.isShown = false
        }
        
    }
    @IBAction func SegmentChanged(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
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
    @IBAction func infoButtonClicked(_ sender: UIButton) {
        // var alert = UIAlertController(title:"")
        let alertController = UIAlertController( title: "Information",
                                                 message: "This is a message",
                                                 preferredStyle: .alert)
        let defaultAction = UIAlertAction(
            title: "OK", style: .cancel,
            handler: nil)
        let otherAction = UIAlertAction(title:"...really",style:.default,handler:nil)
        alertController.addAction(otherAction)
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
}

