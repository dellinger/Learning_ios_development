//
//  ViewController.m
//  MadLibHour7
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
	UIImage *normalImage = [[UIImage imageNamed:@"whiteButton.png"] stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
    UIImage *pressedImage = [[UIImage imageNamed:@"blueButton.png"] stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
   // UIImage *newImage = [[UIImage imageNamed:@"Death-256.png"] stretchableImageWithLeftCapWidth:3.0 topCapHeight:0.0];
    [self.theButton setBackgroundImage:normalImage forState:UIControlStateNormal];
    [self.theButton setBackgroundImage:pressedImage forState:UIControlStateHighlighted];
   // [self.theButton setBackgroundImage:newImage forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createStory:(id)sender {
    
    self.theStory.text = [self.theTemplate.text
                          stringByReplacingOccurrencesOfString:@"<place>"
                          withString:self.thePlace.text];
    
    self.theStory.text = [self.theStory.text
                          stringByReplacingOccurrencesOfString:@"<verb>"
                          withString:self.theVerb.text];
    
    self.theStory.text = [self.theStory.text
                          stringByReplacingOccurrencesOfString:@"<number>"
                          withString:self.theNumber.text];
    
    self.theStory.text = [self.theStory.text
                          stringByReplacingOccurrencesOfString:@"<language>" withString:self.theLanguage.text];
}

- (IBAction)hideKeyboard:(id)sender {
    [self.thePlace resignFirstResponder];
    [self.theVerb resignFirstResponder];
    [self.theNumber resignFirstResponder];
    [self.theLanguage resignFirstResponder];
    [self.theTemplate resignFirstResponder];
}
@end
