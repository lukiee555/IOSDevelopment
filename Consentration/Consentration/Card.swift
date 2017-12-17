//
//  Card.swift
//  Consentration
//
//  Created by Lokesh Soni on 17/12/17.
//  Copyright © 2017 nothing. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMateched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
