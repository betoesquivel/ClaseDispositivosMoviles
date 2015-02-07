//
//  ViewControllerInicio.m
//  EjercicioCuerposGeometricos
//
//  Created by alumno on 2/5/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerInicio.h"

@interface ViewControllerInicio ()

@end

@implementation ViewControllerInicio

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self displayStartScreen];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)displayStartScreen {
    _oResultado.hidden = YES;
    _oImagen.image = [UIImage imageNamed:@"cuerpos.gif"];
    _oVolumen.text = @"";
}
- (IBAction) unwindEsfera:(UIStoryboardSegue *) segue {
    if (_hideScreen){
        [self displayStartScreen];
        return;
    }
    _oResultado.hidden = NO;
    NSLog(@"Resultado:\n%@",_resultado);
    _oResultado.text = _resultado;
    _oImagen.image = _imagen;
    _oVolumen.text = [NSString stringWithFormat:@"%0.2f",_volumen];
}
- (IBAction) unwindPrisma:(UIStoryboardSegue *) segue {
    if (_hideScreen){
        [self displayStartScreen];
        return;
    }
    _oResultado.hidden = NO;
    NSLog(@"Resultado:\n%@",_resultado);
    _oResultado.text = _resultado;
    _oImagen.image = _imagen;
    _oVolumen.text = [NSString stringWithFormat:@"%0.2f",_volumen];
}

- (IBAction)clearScreen:(id)sender {
    [self displayStartScreen];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
