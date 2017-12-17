//
//  ViewController.swift
//  Consentration
//
//  Created by Lokesh Soni on 17/12/17.
//  Copyright © 2017 nothing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cardButtons: [UIButton]!
    
    lazy var game = Consentration(numberOfPairOfCards: (cardButtons.count + 1 ) / 2)
    
    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if  let cardNumber = cardButtons.index(of: sender){
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        }else {
            print("Not in Cards")
        }
    }
    
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card) , for: .normal)
                button.backgroundColor = UIColor.white
            }else {
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMateched ? UIColor.clear : UIColor.orange
            }
            
        }
    }
    var emojiChoices = [ "👻","🎃","🤡","🤠","👽","🤖","😻","🙀","☠️"]
    
    var emoji = [Int:String]()
    
    func emoji(for card: Card) -> String {
        if emoji[card.identifier] == nil , emojiChoices.count > 0{
            
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
            
        }
        
        
        //        if emoji[card.identifier] == nil {
        //            if emojiChoices.count > 0{
        //
        //            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
        //            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
        //
        //        }
        //        }
        
        //        if emoji[card.identifier] != nil {
        //            return emoji[card.identifier]!
        //        }else {
        //        return "?"
        //        }
        
        
        
        return emoji[card.identifier] ?? "?"
    }
    
    
    
    
    
}

