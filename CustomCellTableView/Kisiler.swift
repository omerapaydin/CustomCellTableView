//
//  Kisiler.swift
//  CustomCellTableView
//
//  Created by Ömer on 6.04.2025.
//

import Foundation
class Kisiler {
    var kisiId:Int?
    var kisiAd:String?
    var kisiTel:String?
    
    init() {
        
    }
    
    init(kisiId:Int,kisiAd:String,kisiTel:String) {
        self.kisiId = kisiId
        self.kisiAd = kisiAd
        self.kisiTel = kisiTel
    }
}
