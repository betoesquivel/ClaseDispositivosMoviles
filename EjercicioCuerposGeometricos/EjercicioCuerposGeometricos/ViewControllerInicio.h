//
//  ViewControllerInicio.h
//  EjercicioCuerposGeometricos
//
//  Created by alumno on 2/5/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerInicio : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *oImagen;
@property (weak, nonatomic) IBOutlet UILabel *oResultado;
@property (weak, nonatomic) IBOutlet UITextField *oVolumen;

@property NSString *resultado;
@property (strong, nonatomic) UIImage *imagen;
@property CGFloat volumen;
@property BOOL hideScreen; 
@end
