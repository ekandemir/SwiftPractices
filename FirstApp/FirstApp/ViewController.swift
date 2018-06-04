//
//  ViewController.swift
//  FirstApp
//
//  Created by Developing on 5.08.2017.
//  Copyright © 2017 erdinckandemir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var laberErdinc: UILabel!
    @IBOutlet weak var laberLabel: UILabel!
    
    
    @IBAction func buttonDogru(_ sender: Any) {
        
        laberLabel.text = "adamdir!!!!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

