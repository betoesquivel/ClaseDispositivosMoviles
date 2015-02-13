//
//  DetailViewController.h
//  ListaDeContactos
//
//  Created by José Alberto Esquivel on 2/12/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contacto.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Contacto * detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *lNombre;
@property (weak, nonatomic) IBOutlet UILabel *lOficina;
@property (weak, nonatomic) IBOutlet UILabel *lTelefono;



@end

