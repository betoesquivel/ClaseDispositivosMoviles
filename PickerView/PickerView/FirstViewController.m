//
//  FirstViewController.m
//  PickerView
//
//  Created by José Alberto Esquivel on 4/13/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
    @property NSArray *data;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _data = [[NSArray alloc] initWithObjects:
             @[@"A", @"B", @"C", @"D", @"E"],
             @[@"1", @"2", @"3", @"4", @"5"],
             nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return _data[component][row];
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return _data.count;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return ((NSArray*)_data[component]).count;
}

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString *comp1 = _data[0][ [pickerView selectedRowInComponent:0] ];
    NSString *comp2 = _data[1][ [pickerView selectedRowInComponent:1] ];
    _oTextField.text = [[NSString alloc] initWithFormat:@"%@%@", comp1, comp2 ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
