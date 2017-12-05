//
//  ViewController.swift
//  Gas Friend
//
//  Created by Griffin Jones on 10/26/17.
//  Copyright © 2017 Team Best Team #1. All rights reserved.
//

import UIKit

<<<<<<< HEAD
class ViewController: UIViewController, UITextFieldDelegate {
=======


class ViewController: UIViewController {
    
>>>>>>> 1971a11a1f68196baeb9699085daaada86f640a5

    @IBOutlet weak var Odom: UITextField!
    @IBOutlet weak var Gas: UITextField!
    @IBOutlet weak var Output: UILabel!
    
    @IBAction func Convert(_ sender: Any) {
        var a = (Odom.text! as NSString).doubleValue
        var b = (Gas.text! as NSString).doubleValue
        var answer = a/b
        Output.text = "\(answer)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Odom.delegate = self
        Gas.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}

