//
//  ViewController.swift
//  ObserverPatternExample
//
//  Created by Kaan Yıldırım on 30.12.2020.
//  Copyright © 2020 Ziraat Teknoloji. All rights reserved.
//

import UIKit
import Alamofire

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
        
        let parameters = [
            "results": 2
        ]
        
        AF.request("https://randomuser.me/api/", parameters: parameters).responseJSON { response in
            Spinner.hide()
            if let data = response.data {
                let user = try! JSONDecoder().decode(User.self, from: data)
                print(user.results?[0].name?.first ?? "")
            } else {
                //TODO: Alert data yok
            }
        }
    }

    
    @objc func changeTitle() {
        gameItemName = "CS-GO"
    }
    
    //DidSet tetikleme
    @IBAction func changeButtonPressed(_ sender: Any) {
        gameItemName = "CS-GO"
    }
}

