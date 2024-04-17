//
//  Item.swift
//  AirBnB Clone
//
//  Created by Alvin on 17/04/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
