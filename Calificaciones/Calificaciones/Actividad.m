//
//  Actividad.m
//  Calificaciones
//
//  Created by José Alberto Esquivel on 2/16/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "Actividad.h"

@implementation Actividad
- (id) initWithName:(NSString*) n grade:(NSInteger) g comments:(NSString*) c {
    self = [super init];
    if (self) {
        _name = n;
        _grade = g;
        _comments = c;
    }
    return self;
}
- (id) initWithName:(NSString*) n{
    self = [super init];
    if (self) {
        _name = n;
    }
    return self;
}
@end
