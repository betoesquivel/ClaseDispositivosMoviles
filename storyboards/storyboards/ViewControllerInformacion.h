//
//  ViewControllerInformacion.h
//  storyboards
//
//  Created by alumno on 1/29/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerInformacion : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imgFoto;
@property (strong, nonatomic) IBOutlet UITextField *tfAncho;
@property (strong, nonatomic) IBOutlet UITextField *tfAltura;

@property (nonatomic, strong) UIImage *foto;
@property CGFloat ancho;
@property CGFloat altura;

@end
