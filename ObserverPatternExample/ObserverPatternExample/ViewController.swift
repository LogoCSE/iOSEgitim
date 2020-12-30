//
//  ViewController.swift
//  ObserverPatternExample
//
//  Created by Kaan Yıldırım on 30.12.2020.
//  Copyright © 2020 Ziraat Teknoloji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameNameLabel: UILabel!
    
    var gameItemName: String = "Call of Duty" {
        didSet {
            gameNameLabel.text = gameItemName
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(changeTitle), name: NSNotification.Name.changeTitle, object: nil)
        Spinner.show()
    }

    
    @objc func changeTitle() {
        gameItemName = "CS-GO"
    }
    
    //DidSet tetikleme
    @IBAction func changeButtonPressed(_ sender: Any) {
        gameItemName = "CS-GO"
    }
}

