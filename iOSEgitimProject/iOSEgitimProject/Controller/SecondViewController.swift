//
//  SecondViewController.swift
//  iOSEgitimProject
//
//  Created by Kaan Yıldırım on 17.12.2020.
//  Copyright © 2020 Ziraat Teknoloji. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var centerLabel: UILabel!
    var centerLabelText: String = "SecondViewControllerDefault"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerLabel.text = centerLabelText
        // Do any additional setup after loading the view.
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
