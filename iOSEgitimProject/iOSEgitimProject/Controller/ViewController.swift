//
//  ViewController.swift
//  iOSEgitimProject
//
//  Created by Kaan Yıldırım on 16.12.2020.
//  Copyright © 2020 Ziraat Teknoloji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = "Hello iOS"
        myButton.setTitle("Press Me", for: .normal)
    }

    
    @IBAction func myButtonPressed(_ sender: Any) {
        myLabel.text = "Button Pressed"
    }
    
    @IBAction func myButtonPressed2(_ sender: Any) {
        myLabel.text = "Button Pressed 2"
    }
    
}

