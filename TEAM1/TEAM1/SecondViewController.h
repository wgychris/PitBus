//
//  SecondViewController.h
//  TEAM1
//
//  Created by yuxin xie on 5/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *currentTextField;
@property (strong, nonatomic) IBOutlet UITextField *DestinationTextField;

- (IBAction)OptionButton:(id)sender;

@end
