//
//  ViewController.swift
//  Gas Friend
//
//  Created by Griffin Jones on 10/26/17.
//  Copyright © 2017 Team Best Team #1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Odom: UITextField!
    @IBOutlet weak var Gas: UITextField!
    @IBOutlet weak var Output: UILabel!
    
    @IBAction func Convert(_ sender: Any) {
        let login = HelloViewController()
        
        let c = Double(login.loadDefaults())!
        let a = (Odom.text! as NSString).doubleValue
        let b = (Gas.text! as NSString).doubleValue
        
        
        let answer = (a - c) / b
        Output.text = "\(answer)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}

