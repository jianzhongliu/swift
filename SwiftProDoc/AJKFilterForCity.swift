//
//  AJKFilterForCity.swift
//  SwiftProDoc
//
//  Created by jianzhongliu on 14/6/11.
//  Copyright (c) 2014年 jianzhongliu. All rights reserved.
//

import Foundation
/**
使用class和类名来创建一个类。类中属性的声明和常量、变量声明一样，唯一的区别就是它们的上下文是类。同样，方法和函数声明也一样。
init-构造方法
*/
class AJKFilterForCity {
    var numberOfSides: Int = 0
    var name: String = "a"
    
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "AJK shape with \(numberOfSides) sides."
    }
    
}