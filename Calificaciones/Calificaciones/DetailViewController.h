//
//  DetailViewController.h
//  Calificaciones
//
//  Created by José Alberto Esquivel on 2/16/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Actividad.h"
@interface DetailViewController : UIViewController

@property (strong, nonatomic) Actividad *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITextField *oName;
@property (weak, nonatomic) IBOutlet UITextField *oGrade;
@property (weak, nonatomic) IBOutlet UITextView *oComments;

@end

