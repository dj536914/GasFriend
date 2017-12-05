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
    
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        
        defaults.set(initOdoTextField.text, forKey: "initodo")
        defaults.synchronize()
    }
    
    func loadDefaults() {
        let defaults = UserDefaults.standard
        initOdoTextField.text = defaults.object(forKey: "initodo") as? String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
