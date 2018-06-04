//
//  ViewController.swift
//  calculator2
//
//  Created by Developing on 6.08.2017.
//  Copyright © 2017 erdinckandemir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldFirst: UITextField!
    @IBOutlet weak var textfieldSecond: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        labelResult.text = "......."

        super.viewDidLoad()
        
    }

    
    @IBAction func buttonSum(_ sender: Any) {
        if let number1 = Int(textfieldFirst.text!){
            if let number2 = Int(textfieldSecond.text!){
                labelResult.text = String(number1 + number2)
            }
        }
        
    }
    @IBAction func buttonExt(_ sender: Any) {
        if let number1 = Int(textfieldFirst.text!){
            if let number2 = Int(textfieldSecond.text!){
                labelResult.text = String(number1 - number2)
            }
        }
    }
    @IBAction func buttonMul(_ sender: Any) {
        if let number1 = Int(textfieldFirst.text!){
            if let number2 = Int(textfieldSecond.text!){
                labelResult.text = String(number1 * number2)
            }
        }
    }
    @IBAction func buttonDiv(_ sender: Any) {
        if let number1 = Int(textfieldFirst.text!){
            if let number2 = Int(textfieldSecond.text!){
                labelResult.text = String(number1 / number2)
            }
        }
    }
    @IBAction func buttonMod(_ sender: Any) {
        if let number1 = Int(textfieldFirst.text!){
            if let number2 = Int(textfieldSecond.text!){
                labelResult.text = String(number1 % number2)
            }
        }
    }
    
        
       


}

