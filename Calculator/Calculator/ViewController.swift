//
//  ViewController.swift
//  Calculator
//
//  Created by Developing on 5.08.2017.
//  Copyright © 2017 erdinckandemir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.text = ""

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func buttonSum(_ sender: Any) {
        if let number1 =  Int(firstNumber.text!){
            if let number2 =  Int(secondNumber.text!){
                result = number1 + number2
                labelResult.text = String(result)
            }
        }
    }
    @IBAction func buttonExt(_ sender: Any) {
        if let number1 =  Int(firstNumber.text!){
            if let number2 =  Int(secondNumber.text!){
                result = number1 - number2
                labelResult.text = String(result)
            }
        }
    }
    @IBAction func buttonMul(_ sender: Any) {
        if let number1 =  Int(firstNumber.text!){
            if let number2 =  Int(secondNumber.text!){
                result = number1 * number2
                labelResult.text = String(result)
            }
        }
    }
    @IBAction func buttonDiv(_ sender: Any) {
        if let number1 =  Int(firstNumber.text!){
            if let number2 =  Int(secondNumber.text!){
                result = number1 / number2
                labelResult.text = String(result)
            }
        }
    }
    @IBAction func buttonMod(_ sender: Any) {
        if let number1 =  Int(firstNumber.text!){
            if let number2 =  Int(secondNumber.text!){
                result = Int(number1 % number2)
                labelResult.text = String(result)
            }
        }
    }
    
    
   

    


}

