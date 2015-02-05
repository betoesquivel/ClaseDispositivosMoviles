//
//  ViewControllerInformacion.m
//  storyboards
//
//  Created by alumno on 1/29/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerInformacion.h"

@interface ViewControllerInformacion ()

@end

@implementation ViewControllerInformacion

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imgFoto.image = self.foto;
    self.tfAncho.text = [NSString stringWithFormat:@"%0.0f",self.ancho ];
    self.tfAltura.text = [NSString stringWithFormat:@"%0.0f",self.altura ];
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
