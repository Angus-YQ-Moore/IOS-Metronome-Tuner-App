//
//  TunerData.h
//  ELEC2660 Project
//
//  Created by Angus Moore on 20/11/2017.
//  Copyright © 2017 Leeds.ac.uk. All rights reserved.
//

#define HAVE_AUBIO_UNSTABLE 1
#import <Foundation/Foundation.h>


@interface TunerData : NSObject

@property (strong, nonatomic) NSArray *notefreqvaluesarray;
@property (strong, nonatomic) NSArray *pickertonearray;
@property NSInteger pickerdatanote;

-(NSString*) getpickernote;

@end
