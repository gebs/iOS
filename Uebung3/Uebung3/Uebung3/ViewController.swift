//
//  ViewController.swift
//  Uebung3
//
//  Created by iOSKurs on 10.10.16.
//  Copyright © 2016 iOSKurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var appearanceCounter = 0
    @IBOutlet weak var lblApperanceCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        appearanceCounter = appearanceCounter + 1
        self.lblApperanceCounter.text = String(appearanceCounter) + ". Apperance"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Show2ViewButtonPressed(_ sender: UIButton) {
        let secondVC = SecondViewController()
        secondVC.modalTransitionStyle = .partialCurl
        self.present(secondVC,animated:true,completion: nil)
        
    }
    @IBAction func back(segue: UIStoryboardSegue) { // ... 
    }
}

