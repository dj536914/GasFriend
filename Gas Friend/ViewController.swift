//
//  ViewController.swift
//  Gas Friend
//
//  Created by Griffin Jones on 10/26/17.
//  Copyright © 2017 Team Best Team #1. All rights reserved.
//

import UIKit
/// extention to keep track of the first ever time the app launches
/// boolean value changes to false after first launch
extension UIApplication {
    class func isFirstLaunch() -> Bool {
        if !UserDefaults.standard.bool(forKey: "HasAtLeastLaunchedOnce") {
            UserDefaults.standard.set(true, forKey: "HasAtLeastLaunchedOnce")
            UserDefaults.standard.synchronize()
            return true
        }
        return false
    }
}

/// main view controller
class ViewController: UIViewController {
    
    @IBOutlet weak var Odom: UITextField!
    @IBOutlet weak var Gas: UITextField!
    @IBOutlet weak var Output: UILabel!
    
    
    /// function for button to convert the inputs of the three text fields
    @IBAction func Convert(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        defaults.set(Odom.text, forKey: "prevodo")
        defaults.synchronize()
        
        /// using login almost as a namespace to use a function from a seperate file
        let login = HelloViewController()
        let a: Double
        let b: Double
        var c: Double
        
        
        Output.isHidden = false
        
       // if UIApplication.isFirstLaunch() {
            c = Double(login.loadDefaults())!
            a = (Odom.text! as NSString).doubleValue
            b = (Gas.text! as NSString).doubleValue
        
        
            let answer = (a - c) / b
            Output.text = "\(answer) Miles Per Gallon"
            
        /*}
        else
        {
            c = Double(loadPrev())!
            a = (Odom.text! as NSString).doubleValue
            b = (Gas.text! as NSString).doubleValue
            
            let answer = (a - c) / b
            Output.text = "\(answer) Miles Per Gallon"
            
        }*/
    }
    /// function to load the value previously stored in a text field
    func loadPrev() -> String {
        let defaults = UserDefaults.standard
        let odomprev = defaults.object(forKey: "prevodo") as? String
        return odomprev!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Output.isHidden = true        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

