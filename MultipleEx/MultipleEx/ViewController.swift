//
//  ViewController.swift
//  MultipleEx
//
//  Created by Allen Barnes on 4/11/20.
//  Copyright © 2020 Allen Barnes. All rights reserved.
//

import UIKit

class Global {
    var nameVar = String()
    var switchVar = String()
    var sliderVar:Int = 0
    var pickerVar = String()
}
let global = Global()

class ViewController: UIViewController {
    // variables
    var classSit:Int = 0
    var brainsBrawns:Int = 0
    var friendCount:Int = 0
    var total:Int = 0
    var slidebonus:Int = 0
    
    //outlets
    @IBOutlet weak var myTotal: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var theName: UILabel!
    
    @IBOutlet weak var theSwitch: UILabel!
    
    
    @IBOutlet weak var theSlider: UILabel!
    
    
    @IBOutlet weak var thePicker: UILabel!
    
    
    @IBOutlet weak var myName: UITextField!
    
    
    @IBOutlet weak var navView: UIView!
    
    
    //actions
    
    @IBAction func myName(_ sender: Any) {
        global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()
    }
    
    
    @IBAction func clickMenu(_ sender: Any) {
        if(navView.isHidden) {
                          navView.isHidden = false
                      }
                      else {
                          navView.isHidden = true
                      }
    }
    
    @IBAction func submit(_ sender: Any) {
        total = Int.random(in: 0 ... 10)
        if(total <= 2) {
            myTotal.text = "You are an adventurous type! You love trying new things and making experiences with others. Your go-get-em attitude makes you a Charmander!"
            myImage.image = UIImage(named: "charmander")
        }
        else if(total > 2 && total <= 4){
            myTotal.text = "You are an energetic type! You have a lot of things that you enjoy, and you have a hard time sitting still. Your electric nature makes you a Pikachu!"
            myImage.image = UIImage(named: "pikachu")
            }
        else if(total > 4 && total <= 6){
            myTotal.text = "You are an intuitive type! You prefer to stand back and analyze situations before you act, but aren't afraid to jump in head first! Your intuitive nature makes you a Squirtle!"
            myImage.image = UIImage(named: "squirtle")
        }
        else if(total > 6 && total <= 8){
            myTotal.text = "You are a reserved type! You may not always be the center of attention, but your bonds with those close to you are unrivaled. Your private nature makes you a Bulbasaur!"
            myImage.image = UIImage(named: "bulbasaur")
        }
        else if(total > 8 && total <= 10){
            myTotal.text = "You are an introverted type! You value your personal time more than others, and find fulfillment in your private goals. Your quiet nature makes you a Cubone!"
            myImage.image = UIImage(named: "cubone")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        override func viewWillAppear(_ animated: Bool){
            navView.isHidden = true
        theSwitch.text = "Exercising: \(global.switchVar)"
            theSlider.text = "Masks: \(global.sliderVar)"
            thePicker.text = "Activity: \(global.pickerVar)"
    }
        // Do any additional setup after loading the view.
    


}

