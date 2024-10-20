//
//  DataItem.swift
//  SwiftDataDemo
//
//  Created by Bill Skrzypczak on 10/20/24.
//

import Foundation

import SwiftData

@Model
class DataItem: Identifiable {
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
