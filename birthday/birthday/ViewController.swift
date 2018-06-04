//
//  ViewController.swift
//  birthday
//
//  Created by Developing on 6.08.2017.
//  Copyright © 2017 erdinckandemir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthdayInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    override func viewDidLoad() {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")

        if let newname = storedName as? String{
            nameLabel.text = "Name: \(newname)"
            
        }
        if let newbirthday = storedBirthday as? String{
            birthdayLabel.text = "Birthday: \(newbirthday)"
            
        }
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func saveButton(_ sender: Any) {
        
        nameLabel.text = "Name: \(nameInput.text!)"
        birthdayLabel.text = "Birthday: \(birthdayInput.text!)"
        
        UserDefaults.standard.set(nameInput.text, forKey: "name")
        UserDefaults.standard.set(birthdayInput.text, forKey: "birthday")
        UserDefaults.standard.synchronize()

    }
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        if (storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            UserDefaults.standard.synchronize()
            nameLabel.text = "Name:"
        }
        if (storedBirthday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birthday")
            UserDefaults.standard.synchronize()

            birthdayLabel.text = "Birthday:"
            
        }
        
        
    }
   

}


