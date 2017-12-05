//
//  HelloViewController.swift
//  Gas Friend
//
//  Created by Brennen Smallwood on 11/30/17.
//  Copyright © 2017 Team Best Team #1. All rights reserved.
//

import UIKit


class HelloViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var initOdoTextField: UITextField!
    
    
    /// save button: this function is activated on a button press and saves the value of the text field
    @IBAction func saveButton(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        /// -parameter initodotextfield.text: the text field where data is to be used
        /// -parameter forKey: the variable name or key where data is stored
        defaults.set(initOdoTextField.text, forKey: "initodo")
        defaults.synchronize()
        ///used so the first page only shows on initial launch
        UserDefaults.standard.set(true, forKey: "loadpage")
    }
    /// function that is able to load the value that was stored in a text field
    func loadDefaults() -> String {
        let defaults = UserDefaults.standard
        let initodometer = defaults.object(forKey: "initodo") as? String
        return initodometer!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.bool(forKey: "loadpage") {
            
        } else {
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
