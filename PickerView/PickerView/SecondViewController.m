//
//  SecondViewController.m
//  PickerView
//
//  Created by José Alberto Esquivel on 4/13/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dateChanged:(UIDatePicker *)sender {
    NSDate *date =[sender date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"MMM d, yyyy"];
    
    _oTextField.text = [formatter stringFromDate: date];
    
}
@end
