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
        let currentTheme = switchLabel.isOn ? Theme.dark : Theme.light
        
        view.backgroundColor = currentTheme.backgroundColor
        darkLabel.textColor = currentTheme.textColor
        
        navigationController?.navigationBar.barTintColor = currentTheme.backgroundColor
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: currentTheme.textColor]
        tabBarController?.tabBar.barTintColor = currentTheme.backgroundColor
    }
}
struct Theme {
    let textColor: UIColor
    let backgroundColor: UIColor
    
    static let light = Theme(textColor: .black, backgroundColor: .white)
    static let dark = Theme(textColor: .white, backgroundColor: .black)
        // if switchLabel.isOn == true{
       //     view.backgroundColor = UIColor.black
      //      darkLabel.textColor = UIColor.white
      //  }else{
       //     view.backgroundColor = UIColor.white
       //     darkLabel.textColor = UIColor.black
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

