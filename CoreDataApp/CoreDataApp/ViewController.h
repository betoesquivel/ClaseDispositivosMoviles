//
//  ViewController.h
//  CoreDataApp
//
//  Created by José Alberto Esquivel on 3/26/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *oIdentificador;
@property (weak, nonatomic) IBOutlet UITextField *oNombre;
@property (weak, nonatomic) IBOutlet UITextField *oSueldo;
@property (weak, nonatomic) IBOutlet UITextField *oEstatus;

- (IBAction)oprimeGuardar:(id)sender;
- (IBAction)oprimeBuscar:(id)sender;

@end

