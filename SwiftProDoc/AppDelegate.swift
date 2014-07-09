//
//  AppDelegate.swift
//  SwiftProDoc
//
//  Created by jianzhongliu on 14/6/4.
//  Copyright (c) 2014年 jianzhongliu. All rights reserved.
//

import UIKit
//import AJKFilterForCity

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)

        firstForAndForIncontrol("sdf");
        secondGetGasPrices()//返回多个值
        //可变参数的函数
        thirdSumOf()
        thirdSumOf(42, 597, 12)
        ForthReturnFifteen();
//        var increment = makeIncrementer()
//        increment(7)
        
        var tempFilter = AJKFilterForCity(name: "name")
        tempFilter.numberOfSides = 7
        tempFilter.name = "sdf"
        var shapeDescription = tempFilter.simpleDescription()
        
        
        var hzFilter = HZFilterForCity(sideLength: 3.1, name: "a triangle")
        println(hzFilter.simpleDescription())  
        //枚举类型的调用
        let hearts = Club.Hearts
        let heartsDescription = hearts.simpleDescription()
        //结构体
        let threeOfSpades = Card(club: .Spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        //实现接口的结构体
        var tempStructAndProtocol = SuperCard()
        tempStructAndProtocol.adjust();
        
        var tempOC = MYSecondOCObject()
        tempOC.doSomeThingForPrint();
        
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
/**
    条件控制语句
*/
    func firstForAndForIncontrol(tempStr : String) ->String{
//1－for循环
        for var i=0 ; i < 4 ; i++ {
            println(i);
            
            }
//2-for-in
        var array=[1,2,3,4,5]
        //定义一个字典
        var dic = ["a": 1, "b": 2]
        var tempdic = [:]
        var temp = 0
        for temp in array{
            println(temp);
        }
//3-if
        
        if true {
        println("444")
        
        }
//4-switch
        var veg = "123"
        switch veg {
        case "1": println(1)
        case "123": println("555")
        default: println(0)

        }
//5 while
        var n = 2
        while n < 100 {
            n = n * 2
        }
        
        var m = 2
        do { 
            m = m * 2 
        } while m < 100
//6- for-in&范围
        var firstForLoop = 0
        for i in 0..3 {
            firstForLoop += i
        }
        
        var secondForLoop = 0
        for var i = 0; i < 3; ++i {
            secondForLoop += 1 
        }
        
        return "234";
}

/**
多个返回值的参数
*/
    func secondGetGasPrices() -> (Double, Double, Double) {
        return (3.59, 3.69, 3.79)
    }

/**
可变参数的函数
*/
    func thirdSumOf(numbers: Int...) -> Int {
        var sum = 0
        for number in numbers {
            sum += number
        }
        return sum
    }
/**
函数的嵌套
    函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用嵌套函数来重构一个太长或者太复杂的函数
*/
    func ForthReturnFifteen() -> Int {
        var y = 10
        func add() {
            y += 5
        }
        add()
        return y
    } 
/**
 函数是一等公民，这意味着函数可以作为另一个函数的返回值。
    have a bug
*/
//    func makeIncrementer() -> (Int -> Int) {
//        func addOne(number: Int) -> Int {
//            return 1 + number
//        }
//        return addOne
//    }

    
    
}

