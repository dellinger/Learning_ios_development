//
//  GenericViewController.h
//  LetsTab
//
//  Created by David Ellinger on 10/30/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountingTabBarController.h"

@interface GenericViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UITabBarItem *barItem;

- (IBAction)incrementCountFirst:(id)sender;
- (IBAction)incrementCountSecond:(id)sender;
- (IBAction)incrementCountThird:(id)sender;

- (void)updateCounts;
- (void)updateBadge;

@end
