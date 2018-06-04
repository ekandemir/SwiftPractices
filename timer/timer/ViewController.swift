//
//  ViewController.swift
//  timer
//
//  Created by Developing on 7.08.2017.
//  Copyright © 2017 erdinckandemir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var isonme = true
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(change), userInfo: nil, repeats: true)
        
       
    }
    @objc func change(_ sender: Any){
        if isonme {
            imageView.image = UIImage(named: "onme.jpg")
            isonme = !isonme
        }else{
            imageView.image = UIImage(named: "onyou.jpg")
            isonme = !isonme
            
        }
        
        
    }
}

