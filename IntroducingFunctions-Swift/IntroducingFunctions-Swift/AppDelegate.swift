//
//  AppDelegate.swift
//  IntroducingFunctions-Swift
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
        
        // Insert code here...
        
        let myName: String = "Thomas Bloss"
        
        countDownTillIntroduction(4)
        printIntroductions(myName)
        
        return true
    }
    
    // Define new functions here...
    
    func printIntroductions(name: String) {
        let introduction: String = "My name is " + name
        let japaneseIntroduction: String = introduction + " to moushimasu"
        NSLog("Introduction: \"\(introduction)\"")
        NSLog("Japanese introduction: \"\(japaneseIntroduction)\"")
    }
    
    func countDownTillIntroduction(numberOfDays: Int) {
        if (numberOfDays == 0) {
            NSLog("The time has come")
        } else {
            NSLog("\(numberOfDays) days left until introductions")
            countDownTillIntroduction(numberOfDays-1)
        }
    }
    
}
