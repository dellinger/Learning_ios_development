//
//  ViewController.h
//  DateCalc
//
//  Created by David Ellinger on 10/28/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateChooserViewController.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (nonatomic) Boolean dateChooserVisible;

- (IBAction)showDataChooser:(id)sender;
- (void)calculateDateDifference: (NSDate *)chosenDate;

@end
