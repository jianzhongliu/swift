//
//  HZFilterForCity.swift
//  SwiftProDoc
//
//  Created by jianzhongliu on 14/6/11.
//  Copyright (c) 2014年 jianzhongliu. All rights reserved.
//

import Foundation
//枚举
enum Club {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}

//结构体
struct Card {
//    var rank: Rank
    var club: Club
    func simpleDescription() -> String {
        return "The \(club.simpleDescription()) of \(club.simpleDescription())"
    }
}
//实现接口的结构体
/**
声明SimpleStructure时候mutating关键字用来标记一个会修改结构体的方法。SimpleClass的声明不需要标记任何方法因为类中的方法经常会修改类
*/
struct SuperCard : ExampleProtocol {
    var description: String = "A very simple class."
    func adjust() {
        
    }
}

//接口＝＝＝类、枚举和结构体都可以实现接口。
protocol ExampleProtocol {
    var description: String { get }
    mutating func adjust()
}

class HZFilterForCity : AJKFilterForCity {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "HZ=====A square with sides of length \(sideLength)."
    }


}