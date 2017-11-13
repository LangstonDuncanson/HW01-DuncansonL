//
//  ParkDetailViewController.m
//  HW01-DuncansonL
//
//  Created by Langston Duncanson on 11/13/17.
//  Copyright © 2017 Langston Duncanson. All rights reserved.
//

#import "ParkDetailViewController.h"

@interface ParkDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *parkImageView;
@property (weak, nonatomic) IBOutlet UILabel *parkName;
@property (weak, nonatomic) IBOutlet UILabel *parkLocation;
@property (weak, nonatomic) IBOutlet UILabel *parkYear;
@property (weak, nonatomic) IBOutlet UILabel *parkAddress;
@property (weak, nonatomic) IBOutlet UIImageView *parkMapImageView;
@property (weak, nonatomic) IBOutlet UITextView *parkDirections;
@property (weak, nonatomic) IBOutlet UITextView *parkDescription;

@end

@implementation ParkDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.myPark.name;
    self.parkImageView.image = self.myPark.parkImage;
    self.parkMapImageView.image = self.myPark.parkMap;
    self.parkName.text = self.myPark.name;
    self.parkLocation.text = self.myPark.location;
    NSDateFormatter *df = [[NSDateFormatter alloc] init] ;
    [df setDateFormat:@"MMM dd yyyy"];
    self.parkYear.text = [df stringFromDate:self.myPark.year];
    self.parkAddress.text = self.myPark.address;
    [_parkDirections setScrollEnabled:NO];
    self.parkDirections.text = self.myPark.parkDirections;
    [_parkDirections setScrollEnabled:YES];
    self.parkDirections.editable = NO;
    self.parkDescription.editable = NO;
    [_parkDescription setScrollEnabled:NO];
    self.parkDescription.text = self.myPark.parkDescription;
    [_parkDescription setScrollEnabled:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
