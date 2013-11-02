//
//  GenericViewController.m
//  LetsNavigate
//
//  Created by David Ellinger on 10/30/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import "GenericViewController.h"

@interface GenericViewController ()

@end

@implementation GenericViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSString *pushText;
    pushText = [[NSString alloc] initWithFormat:@"%d",
                ((CountingNavigationControllerViewController *)self.parentViewController).pushCount];
    self.countLabel.text = pushText;
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

- (IBAction)incrementCount:(id)sender {
    ((CountingNavigationControllerViewController *)self.parentViewController).pushCount++;
}
@end
