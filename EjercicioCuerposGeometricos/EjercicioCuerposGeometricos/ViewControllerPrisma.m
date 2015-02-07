//
//  ViewControllerPrisma.m
//  EjercicioCuerposGeometricos
//
//  Created by alumno on 2/5/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerPrisma.h"
#import "ViewControllerInicio.h"
@interface ViewControllerPrisma ()

@end

@implementation ViewControllerPrisma

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
    NSString *format =                       @"largo   = %@\n";
    format = [format stringByAppendingString:@"ancho = %@\n" ];
    format = [format stringByAppendingString:@"altura  = %@" ];
    NSLog(format,_oLargo.text,_oAncho.text,_oAltura.text);
    if (sender == self.obGuardar){
        i.hideScreen = NO;
        i.resultado = [NSString stringWithFormat:format, _oLargo.text, _oAncho.text, _oAltura.text];
        i.imagen = _oImagen.image;
        CGFloat largo, ancho, altura;
        largo  = [_oLargo.text  floatValue];
        ancho  = [_oAncho.text  floatValue];
        altura = [_oAltura.text floatValue];
        i.volumen = largo * ancho * altura;
    }else {
        i.hideScreen = YES;
    }
    
}


@end
