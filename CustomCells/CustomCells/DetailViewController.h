//
//  DetailViewController.h
//  CustomCells
//
//  Created by José Alberto Esquivel on 3/5/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *oImagen;
@property (weak, nonatomic) IBOutlet UITextField *oTipo;
@property (weak, nonatomic) IBOutlet UITextField *oCapacidad;
@property (weak, nonatomic) IBOutlet UITextField *oPrecio;

@end

