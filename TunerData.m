//
//  TunerData.m
//  ELEC2660 Project
//
//  Created by Angus Moore on 20/11/2017.
//  Copyright © 2017 Leeds.ac.uk. All rights reserved.
//

#import "TunerData.h"

@implementation TunerData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.pickertonearray =[NSArray arrayWithObjects:@"C4"
                               ,@"D4"
                               ,@"E4"
                               ,@"F4"
                               ,@"G4"
                               ,@"A4"
                               ,@"B4"
                               ,@"C5"
                               ,@"D5"
                               ,@"E5"
                               ,@"F5"
                               ,@"G5"
                               ,@"A5"
                               ,@"B5", nil];
        
    }
    return self;
}

- (NSString*)getpickernote{
    NSString *pickernote;
    if (_pickerdatanote == 0){
        pickernote =@ "C4";
    } else if(_pickerdatanote == 1){
        pickernote = @"D4";
    } else if(_pickerdatanote == 2){
        pickernote = @"E4";
    } else if(_pickerdatanote == 3){
        pickernote = @"F4";
    } else if(_pickerdatanote == 4){
        pickernote = @"G4";
    } else if(_pickerdatanote == 5){
        pickernote = @"A4";
    } else if(_pickerdatanote == 6){
        pickernote = @"B4";
    } else if(_pickerdatanote == 7){
        pickernote = @"C5";
    } else if(_pickerdatanote == 8){
        pickernote = @"D5";
    } else if(_pickerdatanote == 9){
        pickernote = @"E5";
    } else if(_pickerdatanote == 10){
        pickernote = @"F5";
    } else if(_pickerdatanote == 11){
        pickernote = @"G5";
    } else if(_pickerdatanote == 12){
        pickernote = @"A5";
    } else if(_pickerdatanote == 13){
        pickernote = @"B5";
    }
    
    return pickernote;
}

@end
