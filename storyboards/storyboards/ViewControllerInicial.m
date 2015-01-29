//
//  ViewControllerInicial.m
//  storyboards
//
//  Created by alumno on 1/29/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerInicial.h"

@interface ViewControllerInicial ()

@end

@implementation ViewControllerInicial

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindInformacion: (UIStoryboardSegue *) segue
{
    // no requiere ejecutar ninguna accion
}

- (IBAction)unwindEditar: (UIStoryboardSegue *) segue
{
    // falta completar
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
