//
//  Contacto.h
//  ListaDeContactos
//
//  Created by José Alberto Esquivel on 2/12/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contacto : NSObject

@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *oficina;
@property NSInteger telefono;

-(id) initWithNombre:(NSString *) nom oficina:(NSString*) ofic telefono:(NSInteger)tel; 

@end
