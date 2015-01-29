//
//  ViewController.m
//  divisasIOS
//
//  Created by alumno on 15/01/15.
//  Copyright (c) 2015 Roberto Ruiz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(quitaTeclado)];
    [self.view addGestureRecognizer:tap];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)quitaTeclado {
    [self.view endEditing:YES];
}

- (IBAction)bCalcular:(id)sender {
    CGFloat dolares = 0.0;
    CGFloat tipoCambio = 0.0;
    CGFloat pesos = 0.0;
    
    if ( [self.tfTipoCambio.text isEqualToString:@""] || [self.tfPesos.text isEqualToString:@""]){
        NSString *mensaje = [[NSString alloc] initWithFormat:  @"Introduzca datos en tipo de cambio y pesos."];
        UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:  @"Error"
            message:  mensaje
            delegate:  self    
            cancelButtonTitle:  @"OK"
            otherButtonTitles:  nil  ];
        [alerta show];
        return;
    }
    
    tipoCambio = [self.tfTipoCambio.text doubleValue];
    pesos = [self.tfPesos.text doubleValue];
    dolares = tipoCambio * pesos;
    
    self.tfDolares.text = [[NSString alloc] initWithFormat:@"%f", dolares];
}
@end
