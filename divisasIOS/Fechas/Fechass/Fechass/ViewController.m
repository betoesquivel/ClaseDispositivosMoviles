//
//  ViewController.m
//  Fechass
//
//  Created by alumno on 1/26/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDate *fechaHoy;
    NSDateFormatter *formatoFecha;
    
    fechaHoy = [[NSDate alloc] init];
    formatoFecha = [[NSDateFormatter alloc] init];
    
    // Tue, 21 Aug
    [formatoFecha setDateFormat:@"EE, dd MMM"];
    NSString *fechaAMostrar = [formatoFecha stringFromDate:fechaHoy];
    NSLog(@"\n%@", fechaAMostrar);
    
    // Tue 21 August
    [formatoFecha setDateFormat:@"EE dd MMMM"];
    fechaAMostrar = [formatoFecha stringFromDate:fechaHoy];
    NSLog(@"\n%@", fechaAMostrar);
    
    // 21/08/2012 --- 22:39:02
    [formatoFecha setDateFormat:@"dd/MM/yyyy --- HH:mm:ss"];
    fechaAMostrar = [formatoFecha stringFromDate:fechaHoy];
    NSLog(@"\n%@", fechaAMostrar);
    
    // 21/Aug/2012 --- 10:39:02 PM
    [formatoFecha setDateFormat:@"dd/MMM/yyyy --- hh:mm:ss a"];
    fechaAMostrar = [formatoFecha stringFromDate:fechaHoy];
    NSLog(@"\n%@", fechaAMostrar);
    
    // despues de las 10 PM
    [formatoFecha setDateFormat:@"'despues de las ' hh a"];
    fechaAMostrar = [formatoFecha stringFromDate:fechaHoy];
    NSLog(@"\n%@", fechaAMostrar);
    
    // Dias transcurridos en el anio 234
    [formatoFecha setDateFormat:@"'Dias transcurridos en el anio' DDD"];
    fechaAMostrar = [formatoFecha stringFromDate:fechaHoy];
    NSLog(@"\n%@", fechaAMostrar);
    
    NSDate *fechaNueva = [fechaHoy dateByAddingTimeInterval:604800];
    // Semana siguiente: Tue 28 August
    [formatoFecha setDateFormat:@"'Semana siguiente: 'EE dd MMMM"];
    fechaAMostrar = [formatoFecha stringFromDate:fechaNueva];
    NSLog(@"\n%@", fechaAMostrar);
    
    fechaNueva = [fechaHoy dateByAddingTimeInterval:-604800];
    // Semana anterior: Tue 14 August
    [formatoFecha setDateFormat:@"'Semana anterior: 'EE dd MMMM"];
    fechaAMostrar = [formatoFecha stringFromDate:fechaNueva];
    NSLog(@"\n%@", fechaAMostrar);
    
    fechaNueva = [fechaHoy dateByAddingTimeInterval:86400];
    // Dia siguiente: Wed 22 August
    [formatoFecha setDateFormat:@"'Dia siguiente: 'EE dd MMMM"];
    fechaAMostrar = [formatoFecha stringFromDate:fechaNueva];
    NSLog(@"\n%@", fechaAMostrar);
    
    fechaNueva = [fechaHoy dateByAddingTimeInterval:-86400];
    // Dia anterior: Mon 20 August
    [formatoFecha setDateFormat:@"'Dia anterior: 'EE dd MMMM"];
    fechaAMostrar = [formatoFecha stringFromDate:fechaNueva];
    NSLog(@"\n%@", fechaAMostrar);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
