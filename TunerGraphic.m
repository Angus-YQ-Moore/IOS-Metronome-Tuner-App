//
//  TunerGraphic.m
//  ELEC2660 Project
//
//  Created by Angus Moore on 28/11/2017.
//  Copyright © 2017 Leeds.ac.uk. All rights reserved.
//

#import "TunerGraphic.h"

@implementation TunerGraphic

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef breakline = UIGraphicsGetCurrentContext();
    CGColorRef black = [[UIColor blackColor] CGColor];
    
    CGContextSetFillColorWithColor(breakline, black);
    CGContextFillRect(breakline, CGRectMake(0, 400, 425, 4));
}


@end
