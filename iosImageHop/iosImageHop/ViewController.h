//
//  ViewController.h
//  iosImageHop
//
//  Created by David Ellinger on 10/26/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *bunnyView1;
@property (weak, nonatomic) IBOutlet UIImageView *bunnyView2;
@property (weak, nonatomic) IBOutlet UIImageView *bunnyView3;
@property (weak, nonatomic) IBOutlet UIImageView *bunnyView4;
@property (weak, nonatomic) IBOutlet UIImageView *bunnyView5;
@property (weak, nonatomic) IBOutlet UISlider *speedSlider;
@property (weak, nonatomic) IBOutlet UIStepper *speedStepper;
@property (weak, nonatomic) IBOutlet UILabel *hopsPerSecond;
@property (weak, nonatomic) IBOutlet UIButton *toggleButton;

- (IBAction)toggleAnimation:(id)sender;
- (IBAction)setSpeed:(id)sender;
- (IBAction)setIncrement:(id)sender;



@end
