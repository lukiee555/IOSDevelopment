//
//  Concentration.swift
//  Consentration
//
//  Created by Lokesh Soni on 17/12/17.
//  Copyright © 2017 nothing. All rights reserved.
//

import Foundation

class Consentration
{
    var cards = Array<Card>()
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        
        if !cards[index].isMateched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                //check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMateched = true
                    cards[index].isMateched = true
                }
                
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
                
            }else {
                //either no cards or 2 cards are face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
        
    }
    init(numberOfPairOfCards: Int){
        for _ in 1...numberOfPairOfCards {
            let card = Card()
            // cards.append(card)
            // cards.append(card)
            cards += [card,card]
            
        }
        
        // TODO: Shuffle the cards
    }
}
