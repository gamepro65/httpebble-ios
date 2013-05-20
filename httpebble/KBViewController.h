//
//  KBViewController.h
//  httpebble
//
//  Created by Katharine Berry on 10/05/2013.
//  Copyright (c) 2013 Katharine Berry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KBPebbleThing.h"
#import "APIKeyViewController.h"

@interface KBViewController: UIViewController<KBPebbleThingDelegate>  {
    IBOutlet UILabel* connectedLabel;
    APIKeyViewController *apiView;
    UINavigationController *navController;
    
}

@property (nonatomic, retain) APIKeyViewController *apiView;
@property (nonatomic, retain) UINavigationController *navController;

- (void)pebbleConnected:(PBWatch *)watch;
- (void)pebbleDisconnected;

@end
