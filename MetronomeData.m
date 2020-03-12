//
//  MetronomeData.m
//  ELEC2660 Project
//
//  Created by Angus Moore on 20/11/2017.
//  Copyright © 2017 Leeds.ac.uk. All rights reserved.
//

#import "MetronomeData.h"

@implementation MetronomeData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.MetreArray = [NSArray arrayWithObjects:@"2/4",
                             @"3/4",
                             @"4/4",
                             @"6/8", nil];
        
        self.TempoArray = [NSArray arrayWithObjects:@"Larghissimo",
                           @"Grave",
                           @"Largo",
                           @"Larghetto",
                           @"Adagio",
                           @"Andante",
                           @"Andantino",
                           @"Moderato",
                           @"Allegro",
                           @"Veloce",
                           @"Vivace",
                           @"Presto",
                           @"Prestissimo", nil];

    }
    return self;
}

-(NSInteger) gettempobpm{
    NSInteger databpm = 0;
    if (_SelectedTempo == 0){
        databpm = 20;
    } else if (_SelectedTempo == 1){
        databpm = 35;
    } else if (_SelectedTempo == 2){
        databpm = 50;
    } else if (_SelectedTempo == 3){
        databpm = 65;
    } else if (_SelectedTempo == 4){
        databpm = 75;
    } else if (_SelectedTempo == 5){
        databpm = 88;
    } else if (_SelectedTempo == 6){
        databpm = 105;
    } else if (_SelectedTempo == 7){
        databpm = 120;
    } else if (_SelectedTempo == 8){
        databpm = 140;
    } else if (_SelectedTempo == 9){
        databpm = 160;
    } else if (_SelectedTempo == 10){
        databpm = 170;
    } else if (_SelectedTempo == 11){
        databpm = 190;
    } else if (_SelectedTempo == 12){
        databpm = 210;}

        return databpm;
    }

- (NSString *) getmetre {
    NSString *datametre;
    if (self.SelectedMetre == 0){
        datametre = @"2/4";
    } else if (self.SelectedMetre == 1){
        datametre = @"3/4";
    } else if (self.SelectedMetre == 2){
        datametre = @"4/4";
    } else if (self.SelectedMetre == 3){
        datametre = @"6/8";
    }
    return datametre;
}


- (void)Drawlinebreak{
    
}


@end
