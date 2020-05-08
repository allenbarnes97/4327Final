//
//  PickerViewController.swift
//  MultipleEx
//
//  Created by Allen Barnes on 4/11/20.
//  Copyright © 2020 Allen Barnes. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate

 {
    let items = ["Binging Shows", "Video Games", "Talking to Friends", "Sleeping"]
    //outlets
    
    @IBOutlet weak var pickerVal: UILabel!
    var selection:String!
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        pickerVal.text = "You picked: " + selection
        global.pickerVar = selection
    }
    
    //actions

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self

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
