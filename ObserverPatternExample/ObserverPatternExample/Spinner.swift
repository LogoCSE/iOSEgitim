//
//  Spinner.swift
//  ObserverPatternExample
//
//  Created by Kaan Yıldırım on 30.12.2020.
//  Copyright © 2020 Ziraat Teknoloji. All rights reserved.
//

import Foundation
import SwiftSpinner

class Spinner {
    
    static func show() {
        SwiftSpinner.show("Connecting to satellite...")
    }
    
    static func hide() {
        SwiftSpinner.hide()
    }
}
