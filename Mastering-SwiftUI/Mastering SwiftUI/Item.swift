//
//  Item.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 12/01/24.
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
