//
//  DetailViewController.h
//  Cargar Datos de PList
//
//  Created by José Alberto Esquivel on 3/2/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *oFoto;
@property (weak, nonatomic) IBOutlet UITextField *oTipo;
@property (weak, nonatomic) IBOutlet UITextField *oCapacidad;
@property (weak, nonatomic) IBOutlet UITextField *oPrecio;

@end

