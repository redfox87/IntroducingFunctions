//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSString *myName = @"Thomas Bloss";
    
    countDownTillIntroduction(4);
    printIntroductions(myName);
    
    return YES;
}

// Define new functions here...

void printIntroductions(NSString* name) {
    NSString* introduction;
    NSString* japaneseIntroduction;
    
    introduction = [NSString stringWithFormat: @"My name is %@", name];
    japaneseIntroduction = [introduction stringByAppendingString: @" to moushimasu"];
    NSLog(@"Introduction: \"%@\"", introduction);
    NSLog(@"Japanese introduction: \"%@\"", japaneseIntroduction);
}

void countDownTillIntroduction(int numberOfDays) {
    if (numberOfDays == 0) {
        NSLog(@"The time has come");
    } else {
        NSLog(@"%d days left until introductions", numberOfDays);
        countDownTillIntroduction(--numberOfDays);
    }
}

@end