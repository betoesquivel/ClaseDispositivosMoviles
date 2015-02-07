//
//  ViewControllerPrisma.h
//  EjercicioCuerposGeometricos
//
//  Created by alumno on 2/5/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerPrisma : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *oImagen;
@property (weak, nonatomic) IBOutlet UITextField *oLargo;
@property (weak, nonatomic) IBOutlet UITextField *oAncho;
@property (weak, nonatomic) IBOutlet UITextField *oAltura;
@property (weak, nonatomic) IBOutlet UIButton *obGuardar;

@end
