//
//  DetailViewController.swift
//  TableViewProject
//
//  Created by Ahmet Bekir BAKKAL on 24.12.2020.
//  Copyright © 2020 Ahmet Bekir BAKKAL. All rights reserved.
//

import Foundation
import UIKit

final class DetailViewController: UIViewController {
    
    // MARK: - OUTLETS
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var workingTimeLabel: UILabel!
    @IBOutlet weak var domainLabel: UILabel!
    
    // MARK: - PROPERTIES
    
    var worker: WorkerModel?
    
    // MARK: - LIFE CYCLE METHODS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    // MARK: - PREPARE UI
    
    fileprivate func prepareUI() {
        nameLabel.text = worker?.name
        surnameLabel.text = worker?.surname
        titleLabel.text = worker?.title
        workingTimeLabel.text = worker?.workingTime
        domainLabel.text = worker?.domain
    }
}
