//
//  MiView.m
//  Quartz
//
//  Created by José Alberto Esquivel on 3/12/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "MiView.h"

@implementation MiView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 3.0);
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor );
    
    // Triangle
    CGLayerRef triangleLayer = CGLayerCreateWithContext(context,	self.frame.size,NULL);
    CGContextRef triangleContext	=	CGLayerGetContext(triangleLayer);
    CGContextSetLineWidth(context, 3.0);
    CGContextSetStrokeColorWithColor(context, [UIColor purpleColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor purpleColor].CGColor );
    
    // Painting the triangle
    CGContextMoveToPoint(triangleContext, 50,200);
    CGContextAddLineToPoint(triangleContext, 150, 400);
    CGContextAddLineToPoint(triangleContext, 0, 400);
    CGContextAddLineToPoint(triangleContext, 50, 200);
    CGContextClosePath(triangleContext);
    CGContextFillPath(triangleContext);
    
    CGContextDrawLayerInRect(context, self.frame, triangleLayer);
    
    
    // Rectangle
    CGLayerRef rectangleLayer = CGLayerCreateWithContext(context,	self.frame.size,NULL);
    CGContextRef rectangleContext	=	CGLayerGetContext(rectangleLayer);
    CGContextSetLineWidth(context, 3.0);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor );
    
    // Painting the rectangle
    CGRect myRect	= CGRectMake(0,100,100,100);
    CGContextStrokeRect	(rectangleContext,	myRect);
    CGContextFillRect	(rectangleContext,	myRect);
    
    CGContextDrawLayerInRect(context, self.frame, rectangleLayer);
    
    
    
    // Circle
    CGLayerRef circleLayer = CGLayerCreateWithContext(context,	self.frame.size,NULL);
    CGContextRef circleContext	=	CGLayerGetContext(circleLayer);
    CGContextSetLineWidth(context, 3.0);
    CGContextSetStrokeColorWithColor(context, [UIColor yellowColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor yellowColor].CGColor );
    
    // Painting the circle
    CGRect circleRect	=	CGRectMake(0,0,100,100);
    CGContextFillEllipseInRect(context,	circleRect);
    CGContextStrokeEllipseInRect(context,	circleRect);
    
    CGContextDrawLayerInRect(context, self.frame, circleLayer);
    
    
    
}

@end
