//
//  FirstViewController.m
//  ELEC2660 Project
//
//  Created by Angus Moore on 20/11/2017.
//  Copyright © 2017 Leeds.ac.uk. All rights reserved.
//

#import "MetronomeViewController.h"


@interface MetronomeViewController ()


@end

@implementation MetronomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.MetreTempoPicker.delegate = self;
    self.MetreTempoPicker.dataSource = self;
    self.bpmtextfield.delegate = self;
    self.metronomedata = [[MetronomeData alloc] init];
    self.metronomegraphic =[[UIView alloc] init];
    self.bpmtextfield.text = @"120";
    self.bpm = 120;
    self.bpmstepper.value = 120;
    self.beatnumber = 0;
    self.metre = @"2/4";
    [self setupaudio];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
   
    
}

#pragma picker delegate methods

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    NSString *selection ;
    if (component == 0){
        selection = [self.metronomedata.MetreArray objectAtIndex:row];
    } else if (component == 1) {
        selection = [self.metronomedata.TempoArray objectAtIndex:row];
        }
    return selection;
    }


- (void) pickerView:(UIPickerView *)pickerView
         didSelectRow:(NSInteger)row
         inComponent:(NSInteger)component{
    self.metronomedata.SelectedMetre = [self.MetreTempoPicker selectedRowInComponent:0];
    self.metronomedata.SelectedTempo = [self.MetreTempoPicker selectedRowInComponent:1];
    
    if (component == 0){
        NSString *metre = self.metronomedata.getmetre;
        NSLog(@"Metre = %@", metre);
        
        [self.view setNeedsDisplay];
    } else if (component == 1){
        self.bpm = self.metronomedata.gettempobpm;
        NSString *bpmstring = [NSString stringWithFormat:@"%li", (long)self.bpm];
        self.bpmtextfield.text = bpmstring;
        self.bpmstepper.value = self.bpm;
        NSLog(@"bpm = %f", self.bpm);
        NSLog(@"stepper value = %f", self.bpmstepper.value);
    }
    
 
    
    
               
    
    
}

#pragma picker data methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger rows = 0;
    if(component == 0){
        rows = 4;
    } else if (component == 1){
        rows = 13;
    }
    return rows;
}

#pragma end of picker methods

- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event {//taken from stack overflow
    for (UIView* view in self.view.subviews) {
        if ([view isKindOfClass:[UITextField class]])
            [view resignFirstResponder];
    }
}


- (BOOL)textField:(UITextField *)textField //taken from stack overflow, restricting UITextfield values https://stackoverflow.com/questions/27916943/how-to-not-allow-the-user-to-enter-a-value-more-than-190-in-uitextfield
shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string
{
    NSString *checkstring = [textField.text stringByReplacingCharactersInRange:range withString:string];
    if([checkstring intValue] > 300){
        return NO;
    }
        return YES;
}



- (IBAction)Playpressed:(UIButton *)sender {
    self.beatnumber =0;
    self.metronometimer = [NSTimer scheduledTimerWithTimeInterval:60/self.bpm target:self selector:@selector(timerfire:) userInfo:nil repeats:YES];
}

- (IBAction)Stoppressed:(UIButton *)sender {
    self.beatnumber = 0;
    [self.metronometimer invalidate];
    [self.view setNeedsDisplay];
}

- (void) timerfire:(NSTimer *)metronometimer{
    
    self.beatnumber++;
    if ([self.MetreTempoPicker selectedRowInComponent:0] == 0){
        if (self.beatnumber > 2){
            self.beatnumber = 1;
        }
    }else if ([self.MetreTempoPicker selectedRowInComponent:0] == 1){
        if (self.beatnumber > 3){
            self.beatnumber = 1;
        }
    }else if ([self.MetreTempoPicker selectedRowInComponent:0] == 2){
        if (self.beatnumber > 4){
            self.beatnumber = 1;
        }
    }else if ([self.MetreTempoPicker selectedRowInComponent:0] == 3){
        if (self.beatnumber > 6){
            self.beatnumber = 1;
        }
    }
    
    if (self.beatnumber == 1){
        if ([self.UpClickAudioPlayer isPlaying]){
            [self.UpClickAudioPlayer stop];
            self.UpClickAudioPlayer.currentTime = 0.0;
            
        }
        [self.UpClickAudioPlayer play];
    } else {
        if ([self.DownClickAudioPlayer isPlaying]){
            [self.DownClickAudioPlayer stop];
            self.DownClickAudioPlayer.currentTime = 0.0;
        }
        [self.DownClickAudioPlayer play];
    }
NSLog(@"Timer Fire! Beatnumber = %ld", self.beatnumber);
    
    
    }

- (IBAction)bmpentered:(UITextField *)sender {
    NSString *bpmstring = self.bpmtextfield.text;
    self.bpm = [bpmstring intValue];
    self.bpmstepper.value = self.bpm;
    
    NSLog(@"bpm = %f", self.bpm);
    NSLog(@"stepper value = %f", self.bpmstepper.value);
}
     
- (IBAction)bpmincremented:(UIStepper *)sender {
    NSInteger steppervalue = [sender value];
    NSString *bpmstring = [NSString stringWithFormat:@"%li", steppervalue];
    self.bpmtextfield.text = bpmstring;
    self.bpm = [bpmstring intValue];
    self.view.hidden = TRUE;
    NSLog(@"bpm = %f", self.bpm);
}

- (void) setupaudio  {
    NSString *UpClickPath = [NSString stringWithFormat:@"%@/UpClick.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *UpClickURL = [NSURL fileURLWithPath:UpClickPath];
    self.UpClickAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:UpClickURL error:nil];
    [self.UpClickAudioPlayer prepareToPlay];
    
    NSString *DownClickPath = [NSString stringWithFormat:@"%@/DownClick.wav",
                             [[NSBundle mainBundle] resourcePath]];
    NSURL *DownClickURL = [NSURL fileURLWithPath:DownClickPath];
    self.DownClickAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:DownClickURL error:nil];
    [self.DownClickAudioPlayer prepareToPlay];
    
    NSLog(@"Audio Setup");
    
}
@end
