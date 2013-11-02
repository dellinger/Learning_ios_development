//
//  DateChooserViewController.h
//  DateCalc
//
//  Created by David Ellinger on 10/28/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface DateChooserViewController : UIViewController

@property (weak,nonatomic) id delegate;

- (IBAction)setDateTime:(id)sender;
- (IBAction)dimissDateChooser:(id)sender;


@end
