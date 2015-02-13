//
//  MasterViewController.h
//  ListaDeContactos
//
//  Created by José Alberto Esquivel on 2/12/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerAgregar.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController <ProtocoloAgregarContacto>

@property (strong, nonatomic) DetailViewController *detailViewController;

@end

