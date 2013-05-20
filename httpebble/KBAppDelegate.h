//
//  KBAppDelegate.h
//  httpebble
//
//  Created by Katharine Berry on 10/05/2013.
//  Copyright (c) 2013 Katharine Berry. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KBPebbleThing;
@class KBViewController;

@interface KBAppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *navigationController;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) KBViewController *viewController;

@property (strong, nonatomic) KBPebbleThing *pebbleThing;

@property (nonatomic, retain) UINavigationController *navigationController;


@end
