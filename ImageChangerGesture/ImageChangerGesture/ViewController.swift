//
//  ViewController.swift
//  ImageChangerGesture
//
//  Created by Developing on 7.08.2017.
//  Copyright © 2017 erdinckandemir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isEyesonyou = false
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelEyes: UILabel!
    override func viewDidLoad() {
        let clicking = UITapGestureRecognizer(target: self, action: #selector(ViewController.clickImage))

        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(clicking)
        super.viewDidLoad()
       
    }

    @objc func clickImage(_ sender: Any) {
        if isEyesonyou == false{
            imageView.image = UIImage(named: "onme.jpg")
            labelEyes.text = "My Eyes"
            isEyesonyou = !isEyesonyou
        }
        else{
            imageView.image = UIImage(named: "onyou.jpg")
            labelEyes.text = "On You!"
            isEyesonyou = !isEyesonyou
            
        }
    }


}

