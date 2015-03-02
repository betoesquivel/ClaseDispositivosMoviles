//
//  DetailViewController.m
//  Cargar Datos de PList
//
//  Created by José Alberto Esquivel on 3/2/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _oTipo.text = [_detailItem valueForKey:@"tipo"];
    _oCapacidad.text = [_detailItem valueForKey:@"capacidad"];
    _oPrecio.text = [[NSString alloc] initWithFormat:@"%@",[_detailItem valueForKey:@"precio"] ];
    NSString	*stringUrl = [_detailItem valueForKey:@"url"];
    NSURL	*nsurl	=	[NSURL	URLWithString: stringUrl];
    NSData	*data	=	[[NSData alloc]	initWithContentsOfURL:nsurl];
    UIImage	*imagen =	[UIImage imageWithData:	data];
    _oFoto.image = imagen;
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
