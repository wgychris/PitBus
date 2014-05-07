//
//  SecondViewController.m
//  TEAM1
//
//  Created by yuxin xie on 5/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "SecondViewController.h"
#import "SettingsViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize currentTextField;
@synthesize DestinationTextField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor :[UIColor colorWithRed:0.40 green:0.77 blue:0.93 alpha:1.0]];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)TEXTFIELD {
    [TEXTFIELD resignFirstResponder];
    return YES;
}


@end
