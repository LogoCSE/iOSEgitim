//
//  ChangeViewController.swift
//  ObserverPatternExample
//
//  Created by Kaan Yıldırım on 30.12.2020.
//  Copyright © 2020 Ziraat Teknoloji. All rights reserved.
//

import UIKit

class ChangeViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeButtonPressed(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name.changeTitle, object: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
