//
//  DetailViewController.m
//  CustomCells
//
//  Created by José Alberto Esquivel on 3/5/15.
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
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _oTipo.text = [_detailItem valueForKey:@"tipo"];
    _oCapacidad.text = [_detailItem valueForKey:@"capacidad"];
    _oPrecio.text = [[NSString alloc] initWithFormat:@"%@",[_detailItem valueForKey:@"precio"] ];
    NSString	*stringUrl = [_detailItem valueForKey:@"url"];
    NSURL	*nsurl	=	[NSURL	URLWithString: stringUrl];
    NSData	*data	=	[[NSData alloc]	initWithContentsOfURL:nsurl];
    UIImage	*imagen =	[UIImage imageWithData:	data];
    _oImagen.image = imagen;
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
