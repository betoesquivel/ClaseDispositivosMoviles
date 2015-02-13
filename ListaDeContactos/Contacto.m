//
//  Contacto.m
//  ListaDeContactos
//
//  Created by José Alberto Esquivel on 2/12/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "Contacto.h"

@implementation Contacto

- (id) initWithNombre:(NSString *)nom oficina:(NSString *)ofic telefono:(NSInteger)tel {
    self = [super init];
    
    if (self)
    {
        _nombre = nom;
        _oficina = ofic;
        _telefono = tel;
    }
    
    return self;
}

@end
