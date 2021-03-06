//
//  SelectItineraryViewController.m
//  TEAM1
//
//  Created by yuxin xie on 5/5/14.
//  Copyright (c) 2014 yuxin xie. All rights reserved.
//

#import "SelectItineraryViewController.h"
#import "SelectItineraryTableViewCell.h"

@interface SelectItineraryViewController ()

@end

@implementation SelectItineraryViewController {
    NSMutableArray *routeNumbers;
    NSMutableArray *durations;
    NSMutableArray *costs;
}
@synthesize tableView;

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
    [[self view] setBackgroundColor :[UIColor colorWithRed:0.40 green:0.77 blue:0.93 alpha:1.0]];
    routeNumbers = [[NSMutableArray alloc]initWithObjects:@"Itinerary 1", @"Itinerary 2", @"Itinerary 3", nil];
    durations =[[NSMutableArray alloc]initWithObjects:@"1 hr 20 mins",@"1 hr 45mins", @"2 hr 2mins", nil];
    costs =[[NSMutableArray alloc]initWithObjects:@"Total cost: $3.75",@"Total cost: $4.75",@"Total cost: $4.75", nil];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [routeNumbers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"selectItineraryCell";
    SelectItineraryTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorWithRed:0.40 green:0.77 blue:0.93 alpha:1.0];
    cell.routeNumber.text = [routeNumbers objectAtIndex:indexPath.row];
    cell.duration.text = [durations objectAtIndex:indexPath.row];
    cell.cost.text = [costs objectAtIndex:indexPath.row];
    
    return cell;
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

@end
