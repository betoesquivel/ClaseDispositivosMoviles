//
//  ViewControllerNueva.m
//  CeldasEstaticas
//
//  Created by José Alberto Esquivel on 3/5/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "ViewControllerNueva.h"

@interface ViewControllerNueva ()

@end

@implementation ViewControllerNueva

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configureView];
}
- (void)configureView {
    if (self.objeto) {
        self.oDescription.text = [self.objeto description];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
