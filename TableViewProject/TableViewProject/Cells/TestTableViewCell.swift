//
//  TestTableViewCell.swift
//  TableViewProject
//
//  Created by Ahmet Bekir BAKKAL on 24.12.2020.
//  Copyright © 2020 Ahmet Bekir BAKKAL. All rights reserved.
//

import UIKit

protocol TestTableViewCellDelegate: class {
    func goWorkerDetail(worker: WorkerModel)
}

final class TestTableViewCell: UITableViewCell {

    // MARK: - OUTLETS

    @IBOutlet fileprivate weak var firstLabel: UILabel!
    @IBOutlet fileprivate weak var secondLabel: UILabel!
    @IBOutlet fileprivate weak var button: UIButton!

    // MARK: - PROPERTIES
    
    weak var delegate: TestTableViewCellDelegate?
    private var worker: WorkerModel?
    
    // MARK: - LIFE CYCLE
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // MARK: - CUSTOM METHODS
    
    func setCell(worker: WorkerModel) {
        firstLabel.text = worker.name
        secondLabel.text = worker.title
        self.worker = worker
    }
    
    // MARK: - ACTIONS
    
    @IBAction func buttonTouched(_ sender: Any) {
        if let worker = self.worker {
            self.delegate?.goWorkerDetail(worker: worker)
        }
    }
}
