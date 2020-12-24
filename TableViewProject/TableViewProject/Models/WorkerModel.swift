//
//  WorkerModel.swift
//  TableViewProject
//
//  Created by Ahmet Bekir BAKKAL on 24.12.2020.
//  Copyright © 2020 Ahmet Bekir BAKKAL. All rights reserved.
//

import Foundation

struct WorkerModel {
    var name: String = ""
    var surname: String = ""
    var title: String = ""
    var workingTime: String = ""
    var domain: String = ""
        
    init(name: String, surname: String, title: String, workingTime: String, domain: String) {
        self.name = name
        self.surname = surname
        self.title = title
        self.workingTime = workingTime
        self.domain = domain
    }
}
