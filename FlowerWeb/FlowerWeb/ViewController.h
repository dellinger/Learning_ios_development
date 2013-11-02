//
//  ViewController.h
//  FlowerWeb
//
//  Created by David Ellinger on 10/28/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *colorChoice;
@property (weak, nonatomic) IBOutlet UIWebView *flowerView;
@property (weak, nonatomic) IBOutlet UIWebView *flowerDetailView;

- (IBAction)toggleFlowerDetail:(id)sender;
- (IBAction)getFlower:(id)sender;

@end
