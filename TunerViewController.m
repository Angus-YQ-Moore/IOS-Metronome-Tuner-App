//
//  SecondViewController.m
//  ELEC2660 Project
//
//  Created by Angus Moore on 20/11/2017.
//  Copyright © 2017 Leeds.ac.uk. All rights reserved.
//

#import "TunerViewController.h"
#import "TunerData.h"

@interface TunerViewController ()

@end

@implementation TunerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.Notepicker.delegate = self;
    self.Notepicker.dataSource = self;
    self.tunerdata =[[TunerData alloc]init];
    [self setupAudioPlayers];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma picker delegate methods

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    return [self.tunerdata.pickertonearray objectAtIndex:row];
}


- (void) pickerView:(UIPickerView *)pickerView
       didSelectRow:(NSInteger)row
        inComponent:(NSInteger)component{
    
    self.tunerdata.pickerdatanote = [self.Notepicker selectedRowInComponent:0];
    self.selectednote = self.tunerdata.getpickernote;
    NSLog(@"Selected Note %@", self.selectednote);
    
    }

#pragma picker data methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 14;
    
}

-(void) setupAudioPlayers{//setup all audio objects and set them to loop infinitely
    
    self.selectednote = @"C4";
    NSString *C4Path = [NSString stringWithFormat:@"%@/C4.wav",
    [[NSBundle mainBundle] resourcePath]];
    NSURL *C4URL = [NSURL fileURLWithPath:C4Path];
    self.C4AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:C4URL error:nil];
    self.C4AudioPlayer.numberOfLoops = -1;
    
    NSString *D4Path = [NSString stringWithFormat:@"%@/D4.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *D4URL = [NSURL fileURLWithPath:D4Path];
    self.D4AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:D4URL error:nil];
    self.D4AudioPlayer.numberOfLoops = -1;
    
    NSString *E4Path = [NSString stringWithFormat:@"%@/E4.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *E4URL = [NSURL fileURLWithPath:E4Path];
    self.E4AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:E4URL error:nil];
    self.E4AudioPlayer.numberOfLoops = -1;
    
    NSString *F4Path = [NSString stringWithFormat:@"%@/F4.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *F4URL = [NSURL fileURLWithPath:F4Path];
    self.F4AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:F4URL error:nil];
    self.F4AudioPlayer.numberOfLoops = -1;
    
    NSString *G4Path = [NSString stringWithFormat:@"%@/G4.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *G4URL = [NSURL fileURLWithPath:G4Path];
    self.G4AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:G4URL error:nil];
    self.G4AudioPlayer.numberOfLoops = -1;
    
    NSString *A4Path = [NSString stringWithFormat:@"%@/A4.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *A4URL = [NSURL fileURLWithPath:A4Path];
    self.A4AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:A4URL error:nil];
    self.A4AudioPlayer.numberOfLoops = -1;
    
    NSString *B4Path = [NSString stringWithFormat:@"%@/B4.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *B4URL = [NSURL fileURLWithPath:B4Path];
    self.B4AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:B4URL error:nil];
    self.B4AudioPlayer.numberOfLoops = -1;
    
    NSString *C5Path = [NSString stringWithFormat:@"%@/C5.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *C5URL = [NSURL fileURLWithPath:C5Path];
    self.C5AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:C5URL error:nil];
    self.C5AudioPlayer.numberOfLoops = -1;
    
    NSString *D5Path = [NSString stringWithFormat:@"%@/D5.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *D5URL = [NSURL fileURLWithPath:D5Path];
    self.D5AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:D5URL error:nil];
    self.D5AudioPlayer.numberOfLoops = -1;
    
    NSString *E5Path = [NSString stringWithFormat:@"%@/E5.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *E5URL = [NSURL fileURLWithPath:E5Path];
    self.E5AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:E5URL error:nil];
    self.E5AudioPlayer.numberOfLoops = -1;
    
    NSString *F5Path = [NSString stringWithFormat:@"%@/F5.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *F5URL = [NSURL fileURLWithPath:F5Path];
    self.F5AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:F5URL error:nil];
    self.F5AudioPlayer.numberOfLoops = -1;
    
    NSString *G5Path = [NSString stringWithFormat:@"%@/G5.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *G5URL = [NSURL fileURLWithPath:G5Path];
    self.G5AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:G5URL error:nil];
    self.G5AudioPlayer.numberOfLoops = -1;
    
    NSString *A5Path = [NSString stringWithFormat:@"%@/A5.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *A5URL = [NSURL fileURLWithPath:A5Path];
    self.A5AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:A5URL error:nil];
    self.A5AudioPlayer.numberOfLoops = -1;
    
    NSString *B5Path = [NSString stringWithFormat:@"%@/B5.wav",
                        [[NSBundle mainBundle] resourcePath]];
    NSURL *B5URL = [NSURL fileURLWithPath:B5Path];
    self.B5AudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:B5URL error:nil];
    self.B5AudioPlayer.numberOfLoops = -1;
    
    
    NSLog(@"Audio Setup");
    
}




- (IBAction)Playpressed:(UIButton *)sender {
    
    if ([self.selectednote isEqualToString:@"C4"]){//play selected audio sample and stop all others
        [self.C4AudioPlayer play];
        
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"D4"]){
        [self.D4AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"E4"]){
        [self.E4AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"F4"]){
        [self.F4AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"G4"]){
        [self.G4AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"A4"]){
        [self.A4AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"B4"]){
        [self.B4AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"C5"]){
        [self.C5AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"D5"]){
        [self.D5AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"E5"]){
        [self.E5AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"F5"]){
        [self.F5AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"G5"]){
        [self.G5AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.A5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"A5"]){
        [self.A5AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.B5AudioPlayer stop];
    } else if ([self.selectednote isEqualToString:@"B5"]){
        [self.B5AudioPlayer play];
        
        [self.C4AudioPlayer stop];
        [self.D4AudioPlayer stop];
        [self.E4AudioPlayer stop];
        [self.F4AudioPlayer stop];
        [self.G4AudioPlayer stop];
        [self.A4AudioPlayer stop];
        [self.B4AudioPlayer stop];
        [self.C5AudioPlayer stop];
        [self.D5AudioPlayer stop];
        [self.E5AudioPlayer stop];
        [self.F5AudioPlayer stop];
        [self.G5AudioPlayer stop];
        [self.A5AudioPlayer stop];
    }
    }

- (IBAction)Stoppressed:(UIButton *)sender {
    
    [self.C4AudioPlayer stop];
    [self.D4AudioPlayer stop];
    [self.E4AudioPlayer stop];
    [self.F4AudioPlayer stop];
    [self.G4AudioPlayer stop];
    [self.A4AudioPlayer stop];
    [self.B4AudioPlayer stop];
    [self.C5AudioPlayer stop];
    [self.D5AudioPlayer stop];
    [self.E5AudioPlayer stop];
    [self.F5AudioPlayer stop];
    [self.G5AudioPlayer stop];
    [self.A5AudioPlayer stop];
    [self.B5AudioPlayer stop];
    
    
}
- (IBAction)Tunerswitch:(UISwitch *)sender {
}
@end
