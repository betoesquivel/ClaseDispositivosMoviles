//
//  DetailViewController.m
//  Calificaciones
//
//  Created by José Alberto Esquivel on 2/16/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "DetailViewController.h"
#import "CalificaViewController.h"
#import "Actividad.h"

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
        _oName.text = [_detailItem name];
        _oGrade.text = [[NSString alloc] initWithFormat: @"%ld",(long)_detailItem.grade ];
        _oComments.text = [_detailItem comments];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Calificar"];
    // Do any additional setup after loading the view, typically from a nib.
        [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"editar"]) {
        
        CalificaViewController *controller = (CalificaViewController *)[segue destinationViewController];
        [controller setActivity:_detailItem];
        [controller setDelegado:_master];
        
    }
}

@end
