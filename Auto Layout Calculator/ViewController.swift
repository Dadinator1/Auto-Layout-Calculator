//
//  ViewController.swift
//  Auto Layout Calculator
//
//  Created by Warren Macpro2 on 6/29/18.
//  Copyright © 2018 Warren Hollinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Globals
    @IBOutlet weak var Output: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func zero(_ sender: AnyObject) {
        print(sender.tag)
        input1(pressed: sender.tag)
        
    }
    
    @IBAction func clear(_ sender: Any) {
        Output.text = String(0)
    }
    
    func input1(pressed : Int) {
        var tempString : String = "\(pressed)"
        if Output.text == "0" {
            Output.text = ""
        }
        if pressed == 10 {
            tempString = "."
        }
        let tempVal : String = Output.text!
        
        Output.text = "\(tempVal)\(tempString)"
    }
    
}

