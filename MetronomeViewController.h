//
//  MetronomeViewController.h
//  ELEC2660 Project
//
//  Created by Angus Moore on 20/11/2017.
//  Copyright © 2017 Leeds.ac.uk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MetronomeData.h"
#import <AVFoundation/AVFoundation.h>
#import "MetronomeGraphic.h"


@interface MetronomeViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *MetreTempoPicker;
@property (strong, nonatomic) MetronomeData *metronomedata;
@property (weak, nonatomic) IBOutlet UITextField *bpmtextfield;
@property (weak, nonatomic) IBOutlet UIStepper *bpmstepper;
@property (strong, nonatomic) IBOutlet UIView *metronomegraphic;
@property (strong, nonatomic) NSTimer *metronometimer;
@property float bpm;
@property NSString *metre;
@property NSInteger beatnumber;

@property AVAudioPlayer *UpClickAudioPlayer;
@property AVAudioPlayer *DownClickAudioPlayer;

- (IBAction)bmpentered:(UITextField *)sender;
- (IBAction)bpmincremented:(UIStepper *)sender;
- (IBAction)Playpressed:(UIButton *)sender;
- (IBAction)Stoppressed:(UIButton *)sender;

@end

