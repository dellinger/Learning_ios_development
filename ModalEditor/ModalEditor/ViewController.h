//
//  ViewController.h
//  ModalEditor
//
//  Created by David Ellinger on 10/28/13.
//  Copyright (c) 2013 David Ellinger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;

- (IBAction)exitToHere: (UIStoryboardSegue *)sender;

@end
