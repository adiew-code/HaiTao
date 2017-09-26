//
//  AppDelegate.m
//  HaiTao
//
//  Created by weida on 2017/9/25.
//  Copyright © 2017年 JieMao Technology. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@import GoogleMaps;


static NSString *const kGoogleMapAPIKey = @"AIzaSyAlt7W_QWL_jXfawK_3uenH09P4df5Vwi0";



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController =  [[UINavigationController alloc]initWithRootViewController:[[ViewController alloc]init]];
    [self.window makeKeyAndVisible];
    
    [GMSServices provideAPIKey:kGoogleMapAPIKey];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
   
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
   
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
   
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}


- (void)applicationWillTerminate:(UIApplication *)application {
    
}


@end
