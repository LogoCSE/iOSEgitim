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
        performSegue(withIdentifier: "GotoSecond", sender: nil)
    }
    
    @IBAction func myButtonPressed2(_ sender: Any) {
        myLabel.text = "Button Pressed 2"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        secondViewController.centerLabelText = "ViewControllerdan geldi"
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? SecondViewController {
            controller.centerLabelText = "Perform Segue"
        }
    }
    
}

