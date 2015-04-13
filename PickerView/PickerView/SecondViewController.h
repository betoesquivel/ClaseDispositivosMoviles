//
//  SecondViewController.h
//  PickerView
//
//  Created by José Alberto Esquivel on 4/13/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIDatePicker *oDatePicker;
@property (weak, nonatomic) IBOutlet UITextField *oTextField;

- (IBAction)dateChanged:(UIDatePicker *)sender;

@end

