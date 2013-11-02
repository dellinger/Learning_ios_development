//
//  ViewController.m
//  HelloNoun
//
//  Created by David Ellinger on 10/26/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setOutput:(id)sender {
    self.userOutput.text = self.userInput.text;
}
@end
