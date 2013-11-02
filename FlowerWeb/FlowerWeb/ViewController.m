//
//  ViewController.m
//  FlowerWeb
//
//  Created by David Ellinger on 10/28/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.flowerDetailView.hidden = YES;
    [self getFlower:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toggleFlowerDetail:(id)sender {
    self.flowerDetailView.hidden = ![sender isOn];
}


- (IBAction)getFlower:(id)sender {
    NSURL *imageURL;
    NSURL *detailURL;
    NSString *imageURLString;
    NSString *detailURLString;
    NSString *color;
    int sessionID;
    
    color = [self.colorChoice titleForSegmentAtIndex: self.colorChoice.selectedSegmentIndex];
    sessionID = random()%50000;
    
    imageURLString = [[NSString alloc] initWithFormat:@"http://www.floraphotographs.com/showrandomios.php?color=%@&session=%d",color,sessionID];
    detailURLString = [[NSString alloc] initWithFormat: @"http://wwww.floraphotographs.com/detailios.php?session=%d", sessionID];
    
    imageURL = [[NSURL alloc] initWithString:imageURLString];
    detailURL = [[NSURL alloc] initWithString:detailURLString];
    
    [self.flowerView loadRequest: [NSURLRequest requestWithURL:imageURL]];
    [self.flowerDetailView loadRequest:[NSURLRequest requestWithURL:detailURL]];
     
    self.flowerDetailView.backgroundColor = [UIColor clearColor];
}
@end
