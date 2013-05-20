//
//  KBViewController.m
//  httpebble
//
//  Created by Katharine Berry on 10/05/2013.
//  Copyright (c) 2013 Katharine Berry. All rights reserved.
//

#import "KBViewController.h"
#import <PebbleKit/PebbleKit.h>

@interface KBViewController ()

@end



@implementation KBViewController


@synthesize apiView, navController;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
    UIBarButtonItem *infoButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"API Keys"
                                                                       style:UIBarButtonItemStyleBordered
                                                                      target:self
                                                                      action:@selector(APIKeys:)];
    
    self.navigationItem.rightBarButtonItem = infoButtonItem;
    
    
    
    APIKeyViewController *apiViewControl = [[APIKeyViewController alloc] initWithNibName:@"APIKeyViewController" bundle:[NSBundle mainBundle]];
    self.apiView = apiViewControl;
    
    
    
}


- (void)pebbleConnected:(PBWatch *)watch {
    [connectedLabel setText:[NSString stringWithFormat:@"Connected to %@", [watch name], nil]];
}
- (IBAction)APIKeys:(id)sender {
    
    [navController pushViewController:self.apiView animated:YES];
    
}

- (void)pebbleDisconnected {
    [connectedLabel setText:@"Disconnected"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
