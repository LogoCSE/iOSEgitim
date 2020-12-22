//
//  SingletonExampleViewController.swift
//  CollectionsEgitim
//
//  Created by Kaan Yıldırım on 22.12.2020.
//  Copyright © 2020 Ziraat Teknoloji. All rights reserved.
//

import UIKit

class SingletonExampleViewController: ViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        User.shared = User()
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
