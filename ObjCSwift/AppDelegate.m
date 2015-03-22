//
//  AppDelegate.m
//  ObjCSwift
//
//  Created by Matthew Chupp on 3/22/15.
//  Copyright (c) 2015 MattChupp. All rights reserved.
//

#import "AppDelegate.h"
#import "MCStackViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // override point
    
    // create a MCStackViewController
    MCStackViewController *stackVC = [[MCStackViewController alloc] init];
    
    self.window.rootViewController = stackVC; 
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    
    
    return YES;
}



@end
