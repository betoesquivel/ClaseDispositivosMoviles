//
//  ViewControllerAgregar.h
//  ListaDeContactos
//
//  Created by José Alberto Esquivel on 2/12/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ProtocoloAgregarContacto <NSObject>

- (void) agregaContacto:(NSString*)nombre withOfic:(NSString*) ofic withTel:(NSInteger) tel;
- (void) quitaVista;

@end

@interface ViewControllerAgregar : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *oNombre;
@property (weak, nonatomic) IBOutlet UITextField *oOficina;
@property (weak, nonatomic) IBOutlet UITextField *oTelefono;

@property (strong, nonatomic) id <ProtocoloAgregarContacto> delegado;
- (IBAction)oprimioGuardar:(id)sender;

@end
