//
//  SettingsViewController.swift
//  tip2
//
//  Created by Sumaiya Ahmed on 7/30/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var darkLabel: UILabel!
    @IBOutlet weak var switchLabel: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func switchToggled(_ sender: UISwitch) {
        if switchLabel.isOn == true{
            view.backgroundColor = UIColor.black
            darkLabel.textColor = UIColor.white
        }else{
            view.backgroundColor = UIColor.white
            darkLabel.textColor = UIColor.black
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
