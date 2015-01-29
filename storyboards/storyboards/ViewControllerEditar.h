//
//  ViewControllerEditar.h
//  storyboards
//
//  Created by alumno on 1/29/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerEditar : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tfNombre;
@property (weak, nonatomic) IBOutlet UITextField *tfEmail;
@property (weak, nonatomic) IBOutlet UIButton *bnCancelar;
@property (weak, nonatomic) IBOutlet UIButton *btnGuardar;

@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *email;

@end
