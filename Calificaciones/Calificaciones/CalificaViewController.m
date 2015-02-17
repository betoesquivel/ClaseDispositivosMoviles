//
//  CalificaViewController.m
//  Calificaciones
//
//  Created by José Alberto Esquivel on 2/16/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "CalificaViewController.h"

@interface CalificaViewController ()

@end

@implementation CalificaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Califica"];
    // Do any additional setup after loading the view.
    _oName.text = _activity.name;
    _oGrade.text = [[NSString alloc] initWithFormat:@"%ld", (long)_activity.grade ];
    _oComments.text = _activity.comments;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneEditing:(id)sender {
    _activity.name = _oName.text;
    _activity.grade = [_oGrade.text integerValue];
    _activity.comments = _oComments.text;
    
    // usar el apuntador al master, para actualizar la vista.
    [self.delegado editaCalificacion:_activity];
    [self.delegado quitaVista];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
