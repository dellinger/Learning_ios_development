//
//  ViewController.h
//  HelloNoun
//
//  Created by David Ellinger on 10/26/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *userOutput;
@property (weak, nonatomic) IBOutlet UITextField *userInput;

- (IBAction)setOutput:(id)sender;

@end
