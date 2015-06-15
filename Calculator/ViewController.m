//
//  ViewController.m
//  Calculator
//
//  Created by INNOVATING SOFTWARE SAS on 1/04/15.
//  Copyright (c) 2015 INNOVATING SOFTWARE SAS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



-(IBAction)Number1:(id)sender
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 1;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
    
}

-(IBAction)Number2:(id)sender
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 2;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

-(IBAction)Number3:(id)sender
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 3;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

-(IBAction)Number4:(id)sender
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 4;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

-(IBAction)Number5:(id)sender
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 5;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

-(IBAction)Number6:(id)sender
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 6;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

-(IBAction)Number7:(id)sender
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 7;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

-(IBAction)Number8:(id)sender
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 8;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

-(IBAction)Number9:(id)sender
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 9;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

-(IBAction)Number0:(id)sender
{
    SelectNumber = SelectNumber * 10;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

-(IBAction)Times:(id)sender{
    if(method == 0){
        RunningTotal = SelectNumber;
    }
    else{
        
        [self Operate];
    }
    [self NumberBefore];
    method = 1;
    SelectNumber = 0;
    
    
}

-(IBAction)Divide:(id)sender{
    if(method == 0){
        RunningTotal = SelectNumber;
    }
    else{
        [self Operate];
    }
    [self NumberBefore];
    method = 2;
    SelectNumber = 0;
}

-(IBAction)Plus:(id)sender{
    if(method == 0){
        RunningTotal = SelectNumber;
    }
    else{
        [self Operate];
    }
    [self NumberBefore];
    method = 3;
    SelectNumber = 0;
}

-(IBAction)Subtract:(id)sender
{
    if(method == 0){
        RunningTotal = SelectNumber;
    }
    else{
        [self Operate];
    }
    [self NumberBefore];
    method = 4;
    SelectNumber = 0;
}

-(IBAction)Equals:(id)sender
{
    [self Operate];
    method = 0;
    SelectNumber = RunningTotal;
    NumberBefore.text = [NSString stringWithFormat:@""];
}

-(IBAction)AllClear:(id)sender
{
    method = 0;
    SelectNumber = 0;
    RunningTotal = 0;
    Screen.text = [NSString stringWithFormat:@"0"];
    
}

-(void)NumberBefore{
    Screen.text = [NSString stringWithFormat:@"0"];
    NumberBefore.text = [NSString stringWithFormat:@"%.2f",RunningTotal];
}

-(void)Operate{
    switch (method) {
        case 1:
            RunningTotal = RunningTotal * SelectNumber;
            break;
        case 2:
            RunningTotal = RunningTotal / SelectNumber;
            break;
        case 3:
            RunningTotal = RunningTotal + SelectNumber;
            break;
        case 4:
            RunningTotal = RunningTotal - SelectNumber;
            break;
        default:
            break;
    }
    Screen.text = [NSString stringWithFormat:@"%.2f",RunningTotal];

}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
