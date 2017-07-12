//
//  AppDelegate.m
//  ReachabilityStudy
//
//  Created by zhouzezhou on 2017/7/11.
//  Copyright © 2017年 Zzz. All rights reserved.
//

#import "AppDelegate.h"
#import "AFNetworkReachabilityManager.h"
#import "SubA1ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog(@"Reachability: %@", AFStringFromNetworkReachabilityStatus(status));
    }];
    
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    
    return YES;
}

-(void) setRootViewControllerSubVC
{
    
//    UIStoryboard *subSB = [UIStoryboard storyboardWithName:@"Sub" bundle:nil];
//    SubA1ViewController *subA1VC = [subSB instantiateViewControllerWithIdentifier:@"SubA1ViewController"];
//    
//    self.window.rootViewController = subA1VC;

    UIStoryboard *subSB = [UIStoryboard storyboardWithName:@"Sub" bundle:nil];
    UINavigationController *SubStoryBoardNC = [subSB instantiateViewControllerWithIdentifier:@"SubStoryBoardNC"];
    
    self.window.rootViewController = SubStoryBoardNC;
    
}

-(void) setRootViewControllerMainVC
{
    UIStoryboard *subSB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *MainStoryBoardNC = [subSB instantiateViewControllerWithIdentifier:@"MainStoryBoardNC"];
    
    self.window.rootViewController = MainStoryBoardNC;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
