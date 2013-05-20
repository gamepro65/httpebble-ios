//
//  KBAppDelegate.m
//  httpebble
//
//  Created by Katharine Berry on 10/05/2013.
//  Copyright (c) 2013 Katharine Berry. All rights reserved.
//

#import "KBAppDelegate.h"

#import "KBViewController.h"
#import  <PebbleKit/PebbleKit.h>
#import "KBPebbleThing.h"

@implementation KBAppDelegate

@synthesize navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    self.pebbleThing = [[KBPebbleThing alloc] init];
    self.pebbleThing.delegate = self.viewController;
    
    
    
    self.window.rootViewController = self.viewController;
    navigationController = [[UINavigationController alloc] initWithRootViewController:self.window.rootViewController];
    navigationController.navigationBar.tintColor = [UIColor
                                                    colorWithRed:217.0/255
                                                    green:33.0/255
                                                    blue:0
                                                    alpha:1];
    
    
    self.viewController = [[KBViewController alloc] initWithNibName:@"KBViewController" bundle:nil];
    self.viewController.navController = navigationController;
    
    [navigationController pushViewController:self.viewController animated:YES];
    
    
        
    //navigationController.navigationBarHidden = YES;
    [self.window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];
    
    

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
