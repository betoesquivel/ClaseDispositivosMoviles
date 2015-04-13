//
//  ViewController.m
//  Quartz
//
//  Created by José Alberto Esquivel on 3/12/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "ViewController.h"
#import "MiView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // set constants
    _TRIANGLE = 0;
    _RECTANGLE = 1;
    _CIRCLE = 2;
    ((UISwitch *)_oSwitches[_TRIANGLE]).on = YES;
    ((UISwitch *)_oSwitches[_RECTANGLE]).on = YES;
    ((UISwitch *)_oSwitches[_CIRCLE]).on = YES;
    _oView.triangleActivated = YES;
    _oView.rectangleActivated = YES;
    _oView.circleActivated = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchChanged:(id)sender {
    
    if (_oSwitches[_TRIANGLE] == sender){
        _oView.triangleActivated = (_oView.triangleActivated) ? NO:YES;
    }else if (_oSwitches[_RECTANGLE] == sender){
        _oView.rectangleActivated = (_oView.rectangleActivated) ? NO:YES;
    }else if (_oSwitches[_CIRCLE] == sender){
        _oView.circleActivated = (_oView.circleActivated) ? NO:YES;
    }
    [_oView setNeedsDisplay];
}

@end
