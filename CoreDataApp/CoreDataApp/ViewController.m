//
//  ViewController.m
//  CoreDataApp
//
//  Created by José Alberto Esquivel on 3/26/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)oprimeGuardar:(id)sender {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *contexto = [appDelegate managedObjectContext];
    
    // crea un nuevo registro en la base de datos
    NSManagedObject *nuevoEmp = [NSEntityDescription insertNewObjectForEntityForName:@"Empleado" inManagedObjectContext:contexto];
    
    // coloca los datos al nuevo registro
    NSInteger numeroId = [_oIdentificador.text integerValue];
    [nuevoEmp setValue: [NSNumber numberWithInt: (int)numeroId] forKey:@"ident"];
    [nuevoEmp setValue: _oNombre.text forKey:@"nombre"];
    CGFloat sueldo = [self.oSueldo.text floatValue];
    [nuevoEmp setValue: [NSNumber numberWithFloat: sueldo] forKey:@"sueldo"];
    
    // pone los campos en blanco
    _oIdentificador.text = @"";
    _oNombre.text = @"";
    _oSueldo.text = @"";
    [self.view endEditing: YES]; // quita el teclado
    
    NSError *error;
    // guarda el contexto a la base de datos
    [contexto save: &error];
    _oEstatus.text = @"Empleado guardado";
    
}

- (IBAction)oprimeBuscar:(id)sender {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *contexto = [appDelegate managedObjectContext];
    NSEntityDescription *entidad = [NSEntityDescription entityForName:@"Empleado" inManagedObjectContext:contexto];
    
    // creo un request
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity: entidad]; // especifico la entidad
    NSPredicate *predicado = [NSPredicate predicateWithFormat:@" (ident = %@) ", self.oIdentificador.text];
    [request setPredicate: predicado];
    
    NSError *error;
    // ejecuto el request
    NSArray *objetoMatch =  [contexto executeFetchRequest:request error:&error ];
    
    if (objetoMatch.count == 0)
    {
        self.oEstatus.text = @"No hay empleados con ese nombre";
    }
    else
    {
        NSManagedObject *registroMatch = objetoMatch[0];
        _oIdentificador.text = [[registroMatch valueForKey: @"ident"] stringValue];
        _oNombre.text = [registroMatch valueForKey:@"nombre"];
        _oSueldo.text = [[registroMatch valueForKey: @"sueldo"] stringValue];
        _oEstatus.text = @"";
        
    }
    
}
@end
