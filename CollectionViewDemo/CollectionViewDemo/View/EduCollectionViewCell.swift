//
//  EduCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Kaan Yıldırım on 28.12.2020.
//  Copyright © 2020 Ziraat Teknoloji. All rights reserved.
//

import UIKit

class EduCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    func setCell(item: EduItem) {
        cellImage.image = UIImage(named: item.imageName)
        cellLabel.text = item.name
    }
}
