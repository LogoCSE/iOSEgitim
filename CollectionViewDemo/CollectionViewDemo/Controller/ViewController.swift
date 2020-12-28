//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Kaan Yıldırım on 28.12.2020.
//  Copyright © 2020 Ziraat Teknoloji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var edus: [EduItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareItems()
        prepareUI()
    }
    
    fileprivate func prepareItems() {
        let eduXcode = EduItem(imageName: "xcode", name: "Xcode")
        let eduSwift = EduItem(imageName: "swift", name: "swift")
        let eduMacos = EduItem(imageName: "macos", name: "macos")
        let eduGit = EduItem(imageName: "github", name: "git")
        let eduApple = EduItem(imageName: "apple", name: "apple")
        
        edus = [eduXcode, eduSwift, eduMacos, eduGit, eduApple]
    }

    fileprivate func prepareUI() {
        navigationItem.title = "Eğitimler"
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return edus.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let edu = edus[indexPath.row]
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eduCell", for: indexPath) as? EduCollectionViewCell {
            cell.setCell(item: edu)
            return cell
        }
        
        return UICollectionViewCell()
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = self.view.frame.width - 16 * 2.0
        let height: CGFloat = 234.0
        
        return CGSize(width: width, height: height)
    }
}
