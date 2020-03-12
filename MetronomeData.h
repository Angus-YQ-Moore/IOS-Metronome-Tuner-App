//
//  MetronomeData.h
//  ELEC2660 Project
//
//  Created by Angus Moore on 20/11/2017.
//  Copyright © 2017 Leeds.ac.uk. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MetronomeData : NSObject

@property(strong, nonatomic) NSArray *MetreArray;
@property(strong, nonatomic) NSArray *TempoArray;
@property NSInteger SelectedMetre;
@property NSInteger SelectedTempo;


-(NSInteger) gettempobpm;
-(NSString*) getmetre;
-(void)Drawlinebreak;

@end
