//
//  ViewControllerAgregar.m
//  ListaDeContactos
//
//  Created by José Alberto Esquivel on 2/12/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "ViewControllerAgregar.h"

@interface ViewControllerAgregar ()

@end

@implementation ViewControllerAgregar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)oprimioGuardar:(id)sender {
    if (![_oNombre.text isEqualToString:@""]){
        NSString *nom = _oNombre.text;
        NSString *ofic = _oOficina.text;
        NSInteger tel = [_oTelefono.text integerValue];
        
        [self.delegado agregaContacto:nom withOfic:ofic withTel:tel];
        [self.delegado quitaVista];
    }
}
@end
