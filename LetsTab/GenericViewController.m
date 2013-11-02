//
//  GenericViewController.m
//  LetsTab
//
//  Created by David Ellinger on 10/30/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import "GenericViewController.h"

@interface GenericViewController ()

@end

@implementation GenericViewController

-(void)updateCounts{
    NSString *countString;
    countString=[[NSString alloc] initWithFormat:
                                      @"First: %d\nSecond: %d\nThird:%d",
                 ((CountingTabBarController *)self.parentViewController).firstCount,
                 ((CountingTabBarController *)self.parentViewController).secondCount,
                 ((CountingTabBarController *)self.parentViewController).thirdCount];
    self.outputLabel.text=countString;
}

-(void)updateBadge{
    NSString *badgeCount;
    int currentBadge;
    currentBadge=[self.barItem.badgeValue intValue];
    currentBadge++;
    badgeCount=[[NSString alloc]initWithFormat:@"%d",
                currentBadge];
    self.barItem.badgeValue=badgeCount;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)incrementCountFirst:(id)sender {
    ((CountingTabBarController *)self.parentViewController).firstCount++;
    [self updateBadge];
    [self updateCounts];
}

- (IBAction)incrementCountSecond:(id)sender {
    ((CountingTabBarController *)self.parentViewController).secondCount++;
    [self updateBadge];
    [self updateCounts];
}

- (IBAction)incrementCountThird:(id)sender {
    ((CountingTabBarController *)self.parentViewController).thirdCount++;
    [self updateBadge];
    [self updateCounts];
}
@end
