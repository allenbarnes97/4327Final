//
//  SwitchViewController.swift
//  MultipleEx
//
//  Created by Allen Barnes on 4/11/20.
//  Copyright © 2020 Allen Barnes. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {
    
    //outlets
    
    @IBOutlet weak var switchVal: UILabel!
    
    
    //actions
    
    @IBAction func mySwitch(_ sender: UISwitch) {
        if sender.isOn {
           global.switchVar = "Yes"
        }
        else {
           global.switchVar = "No"
    }
    switchVal.text = global.switchVar
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        global.switchVar = "No"
        

        // Do any additional setup after loading the view.
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
