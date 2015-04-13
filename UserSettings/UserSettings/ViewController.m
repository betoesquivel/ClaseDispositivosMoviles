//
//  ViewController.m
//  UserSettings
//
//  Created by José Alberto Esquivel on 3/23/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (void) actualizaSettings {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    self.oNombre.text = [defaults objectForKey:@"nombreUsuario"];
    NSLog(_oNombre.text);
    self.oSonido.text = [[defaults objectForKey:@"sonido"] stringValue];
        NSLog(_oSonido.text);
    self.oExperiencia.text = [defaults objectForKey:@"experiencia"];
        NSLog(_oExperiencia.text);
    self.oVolumen.text = [[defaults objectForKey:@"volumen"] stringValue];
    NSLog(_oVolumen.text);

    
}
- (void) viewDidAppear:(BOOL) animated {
    [self actualizaSettings];
    [super viewDidAppear:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
