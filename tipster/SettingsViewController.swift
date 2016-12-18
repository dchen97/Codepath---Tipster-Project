//
//  SettingsViewController.swift
//  tipster
//
//  Created by Diana C on 12/18/16.
//  Copyright © 2016 Diana C. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    
    @IBOutlet weak var defaultPercentControl: UISegmentedControl!
  
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if (defaults.integer(forKey: "percentIndex") < 0) {
            defaults.set(0, forKey: "percentIndex")
            defaults.synchronize()
        }
        let percentIndex = defaults.integer(forKey: "percentIndex")
        
        defaultPercentControl.selectedSegmentIndex = percentIndex
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onDefaultPercentChange(_ sender: Any) {
        let newIndex = defaultPercentControl.selectedSegmentIndex
        
        defaults.set(newIndex, forKey: "percentIndex")
        
        defaults.synchronize()
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
