//
//  SettingsViewController.m
//  UserSettings
//
//  Created by José Alberto Esquivel on 3/23/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"sonido"]){
        _oSwitch.on = YES;
    }else {
        _oSwitch.on = NO;
    }
    _oSlider.value = [defaults floatForKey:@"volumen"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillDisappear: (BOOL) animated {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool: self.oSwitch.on forKey:@"sonido"];
    [defaults setFloat: self.oSlider.value forKey:@"volumen"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
