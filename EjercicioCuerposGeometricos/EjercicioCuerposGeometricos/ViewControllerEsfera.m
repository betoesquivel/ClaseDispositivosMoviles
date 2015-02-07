//
//  ViewControllerEsfera.m
//  EjercicioCuerposGeometricos
//
//  Created by alumno on 2/5/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerEsfera.h"
#import "ViewControllerInicio.h"
#include "math.h"

@interface ViewControllerEsfera ()

@end

@implementation ViewControllerEsfera

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    ViewControllerInicio *i = [segue destinationViewController];
    // Pass the selected object to the new view controller.
    NSString *format = @"radio  = %@";
    
    if (sender == self.obGuardar){
        i.hideScreen = NO;
        i.resultado = [NSString stringWithFormat:format, _oRadio.text];
        i.imagen = _oImagen.image;
        CGFloat radio;
        radio  = [_oRadio.text  floatValue];
        i.volumen = (4.0/3.0) * 3.14 * pow(radio,3.0) ;
    }else {
        i.hideScreen = YES;
    }
}


@end
