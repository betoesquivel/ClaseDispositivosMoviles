//
//  MasterViewController.h
//  Calificaciones
//
//  Created by José Alberto Esquivel on 2/16/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalificaViewController.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController <ProtocoloEditarCalificacion>

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

