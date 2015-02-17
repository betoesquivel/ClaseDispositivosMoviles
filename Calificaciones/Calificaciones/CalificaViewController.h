//
//  CalificaViewController.h
//  Calificaciones
//
//  Created by José Alberto Esquivel on 2/16/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Actividad.h"

@protocol ProtocoloEditarCalificacion <NSObject>

- (void) editaCalificacion:(Actividad*) act;
- (void) quitaVista;

@end

@interface CalificaViewController : UIViewController

@property (strong, nonatomic) Actividad *activity;
@property (weak, nonatomic) IBOutlet UITextField *oName;
@property (weak, nonatomic) IBOutlet UITextField *oGrade;
@property (weak, nonatomic) IBOutlet UITextView *oComments;

@property (strong, nonatomic) id <ProtocoloEditarCalificacion> delegado;

@end
