//
//  ViewController.swift
//  TableViewProject
//
//  Created by Ahmet Bekir BAKKAL on 23.12.2020.
//  Copyright © 2020 Ahmet Bekir BAKKAL. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - OUTLETS
    
    @IBOutlet weak var tableView: UITableView!

    // MARK: - PROPERTIES
    
    var workerList = [WorkerModel]()

    // MARK: - LIFE CYCLE METHODS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }

    // MARK: - PREPARE UI
    
    func prepareUI() {
        prepareModels()
        prepareTableView()
    }
    
    func prepareModels() {
        let ahmet = WorkerModel(name: "Ahmet", surname: "Bakkal", title: "Uzman", workingTime: "4 yıl", domain: "IB")
        let berkin = WorkerModel(name: "Berkin", surname: "Kabadayı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let baris = WorkerModel(name: "Barış", surname: "Taşçı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let ahmet1 = WorkerModel(name: "Ahmet1", surname: "Bakkal", title: "Uzman", workingTime: "4 yıl", domain: "IB")
        let berkin1 = WorkerModel(name: "Berkin1", surname: "Kabadayı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let baris1 = WorkerModel(name: "Barış1", surname: "Taşçı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let ahmet2 = WorkerModel(name: "Ahmet2", surname: "Bakkal", title: "Uzman", workingTime: "4 yıl", domain: "IB")
        let berkin2 = WorkerModel(name: "Berkin2", surname: "Kabadayı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let baris2 = WorkerModel(name: "Barış2", surname: "Taşçı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let ahmet3 = WorkerModel(name: "Ahmet3", surname: "Bakkal", title: "Uzman", workingTime: "4 yıl", domain: "IB")
        let berkin3 = WorkerModel(name: "Berkin3", surname: "Kabadayı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let baris3 = WorkerModel(name: "Barış3", surname: "Taşçı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let ahmet4 = WorkerModel(name: "Ahmet4", surname: "Bakkal", title: "Uzman", workingTime: "4 yıl", domain: "IB")
        let berkin4 = WorkerModel(name: "Berkin4", surname: "Kabadayı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let baris4 = WorkerModel(name: "Barış4", surname: "Taşçı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let ahmet5 = WorkerModel(name: "Ahmet5", surname: "Bakkal", title: "Uzman", workingTime: "4 yıl", domain: "IB")
        let berkin5 = WorkerModel(name: "Berkin5", surname: "Kabadayı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")
        let baris5 = WorkerModel(name: "Barış5", surname: "Taşçı", title: "Uzman Yrd", workingTime: "2 ay", domain: "iOS")

        workerList = [ahmet, berkin, baris, ahmet1, berkin1, baris1, ahmet2, berkin2, baris2, ahmet3, berkin3, baris3, ahmet4, berkin4, baris4, ahmet5, berkin5, baris5]
    }
    
    fileprivate func prepareTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier: "TestTableViewCell")
        tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource Methods

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell") as? TestTableViewCell {
            cell.setCell(worker: workerList[indexPath.row])
            cell.delegate = self
            return cell
        }
        
        return UITableViewCell()
    }
}

// MARK: - UITableViewDelegate Methods

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected row:  \(indexPath.row)", "selected section:  \(indexPath.section)")
    }
}

extension ViewController: TestTableViewCellDelegate {
    func goWorkerDetail(worker: WorkerModel) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        vc.worker = worker
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
