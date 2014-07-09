//
//  QianTao.swift
//  SwiftProDoc
//
//  Created by jianzhongliu on 14/6/11.
//  Copyright (c) 2014年 jianzhongliu. All rights reserved.
//

import Foundation
struct BlackjackCard {
    
    // 嵌套定义枚举型Suit
    enum Suit: Character {
        case Spades = "a", Hearts = "b", Diamonds = "c", Clubs = "d"
    }
    
    // 嵌套定义枚举型Rank
    enum Rank: Int {
        case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King, Ace
        struct Values {
            
            let first: Int, second: Int?
        }
        var values: Values {
        switch self {
        case .Ace:
            return Values(first: 1, second: 11)
        case .Jack, .Queen, .King:
            return Values(first: 10, second: nil)
        default:
            return Values(first: self.toRaw(), second: nil)
            }
        }
    }
    
    // BlackjackCard 的属性和方法
    let rank: Rank, suit: Suit
    var description: String {
    var output = "suit is \(suit.toRaw()),"
        output += " value is \(rank.values.first)"
        if let second = rank.values.second {
            output += " or \(second)"
        }
        return output 
    } 
}