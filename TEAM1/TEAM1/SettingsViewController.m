//
//  SettingsViewController.m
//  TEAM1
//
//  Created by yuxin xie on 5/5/14.
//  Copyright (c) 2014 yuxin xie. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
@synthesize today;
@synthesize now;
@synthesize routeType;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)TEXTFIELD {
    [TEXTFIELD resignFirstResponder];
    return YES;
}

- (IBAction)DoneButton:(id)sender {

    
    -(void)addPickerView{
        pickerArray = [[NSArray alloc]initWithObjects:@"Chess",
                       @"Cricket",@"Football",@"Tennis",@"Volleyball", nil];
        today = [[UITextField alloc]initWithFrame:
                       CGRectMake(10, 100, 300, 30)];
        today.borderStyle = UITextBorderStyleRoundedRect;
        today.textAlignment = UITextAlignmentCenter;
        todaydelegate = self;
        [self.view addSubview:today];
        [today setPlaceholder:@"Pick a Sport"];
        myPickerView = [[UIPickerView alloc]init];
        myPickerView.dataSource = self;
        myPickerView.delegate = self;
        myPickerView.showsSelectionIndicator = YES;
        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                       initWithTitle:@"Done" style:UIBarButtonItemStyleDone
                                       target:self action:@selector(done:)];
        UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:
                              CGRectMake(0, self.view.frame.size.height-
                                         myDatePicker.frame.size.height-50, 320, 50)];
        [toolBar setBarStyle:UIBarStyleBlackOpaque];
        NSArray *toolbarItems = [NSArray arrayWithObjects: 
                                 doneButton, nil];
        [toolBar setItems:toolbarItems];
        today.inputView = myPickerView;
        today.inputAccessoryView = toolBar;
        
    }
}

@end
