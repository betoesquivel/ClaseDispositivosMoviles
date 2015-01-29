//
//  ViewControllerInicial.h
//  storyboards
//
//  Created by alumno on 1/29/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerInicial : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgFoto;
@property (weak, nonatomic) IBOutlet UITextField *tfNombre;
@property (weak, nonatomic) IBOutlet UITextField *tfEmail;


@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *email;

@end
