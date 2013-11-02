//
//  GenericViewController.h
//  LetsNavigate
//
//  Created by David Ellinger on 10/30/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountingNavigationControllerViewController.h"

@interface GenericViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
- (IBAction)incrementCount:(id)sender;

@end
