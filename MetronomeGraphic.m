//
//  MetronomeGraphic.m
//  ELEC2660 Project
//
//  Created by Angus Moore on 28/11/2017.
//  Copyright © 2017 Leeds.ac.uk. All rights reserved.
//

#import "MetronomeGraphic.h"

@implementation MetronomeGraphic


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/



- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef breakline = UIGraphicsGetCurrentContext();
    CGContextRef Beat1 = UIGraphicsGetCurrentContext();
    CGContextRef Beat2 = UIGraphicsGetCurrentContext();
    CGContextRef Beat3 = UIGraphicsGetCurrentContext();
    CGContextRef Beat4 = UIGraphicsGetCurrentContext();
    
    CGColorRef black = [[UIColor blackColor] CGColor];
    CGColorRef purple = [[UIColor purpleColor] CGColor];
    
    CGContextSetFillColorWithColor(breakline, black);
    CGContextFillRect(breakline, CGRectMake(0, 400, 425, 4));
    
   
    NSLog(@"drawrect: called");
    NSLog(@"Graphic Metre = %@", self.graphicmetre);
    NSLog(@"Graphic Beatnumber = %li", (long)self.graphicbeatnumber);
    
    if ([self.graphicmetre isEqualToString:@"4/4"]){
    CGContextSetFillColorWithColor(Beat1, purple);
    CGContextFillRect(Beat1, CGRectMake(22, 180, 70, 70));
    CGContextSetFillColorWithColor(Beat2, purple);
    CGContextFillRect(Beat2, CGRectMake(122, 180, 70, 70));
    CGContextSetFillColorWithColor(Beat3, purple);
    CGContextFillRect(Beat3, CGRectMake(222, 180, 70, 70));
    CGContextSetFillColorWithColor(Beat4, purple);
    CGContextFillRect(Beat4, CGRectMake(322, 180, 70, 70));
    
    NSLog(@"Drawn 4/4");
        
    } else if ([self.graphicmetre isEqualToString:@"3/4"]){
        CGContextSetFillColorWithColor(Beat1, purple);
        CGContextFillRect(Beat1, CGRectMake(22, 180, 70, 70));
        CGContextSetFillColorWithColor(Beat2, purple);
        CGContextFillRect(Beat2, CGRectMake(122, 180, 70, 70));
        CGContextSetFillColorWithColor(Beat3, purple);
        CGContextFillRect(Beat3, CGRectMake(222, 180, 70, 70));
    
        
        NSLog(@"Drawn 3/4");
        
    } else if ([self.graphicmetre isEqualToString:@"2/4"]){
        CGContextSetFillColorWithColor(Beat1, purple);
        CGContextFillRect(Beat1, CGRectMake(22, 180, 70, 70));
        CGContextSetFillColorWithColor(Beat2, purple);
        CGContextFillRect(Beat2, CGRectMake(122, 180, 70, 70));
     
        
        NSLog(@"Drawn 2/4");
    }
}


@end
