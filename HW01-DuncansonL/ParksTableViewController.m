//
//  ParksTableViewController.m
//  HW01-DuncansonL
//
//  Created by Langston Duncanson on 11/13/17.
//  Copyright © 2017 Langston Duncanson. All rights reserved.
//

#import "ParksTableViewController.h"
#import "Parks.h"
#import "ParkTableViewCell.h"
#import "ParkDetailViewController.h"

@interface ParksTableViewController ()
@property (strong, nonatomic) NSMutableArray* flParks;
@end

@implementation ParksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*Parks * name = [[Parks alloc] init];
    name.name =@"";
    name.year= [self setDate:(int) withMonth:<#(int)#> andYear:<#(int)#>];
    name.location=@"";
    name.address=@"";
    name.parkDescription=@"";
    name.parkImage = [UIImage imageNamed:@""];
    name.smParkImage = [UIImage imageNamed:@"smallParkImages/.jpg"];*/
    
     Parks * bigCypress = [[Parks alloc] init];
     bigCypress.name =@"Big Cypress";
     bigCypress.year= [self setDate:4 withMonth:10 andYear:1974];
     bigCypress.location=@"Ochopee, FL";
     bigCypress.address=@"52105 Tamiami Trail East, Ochopee, Florida 34141";
     bigCypress.parkDescription=@"The freshwaters of the Big Cypress Swamp, essential to the health of the neighboring Everglades, support the rich marine estuaries along Florida's southwest coast. Protecting over 729,000 acres of this vast swamp, Big Cypress National Preserve contains a mixture of tropical and temperate plant communities that are home to a diversity of wildlife, including the elusive Florida panther.";
     bigCypress.parkDirections=@"Big Cypress is located along the Tamiami Trail East and I-75 in southern Florida. The preserve can be accessed by driving from Miami and Naples. The preserves two visitor centers are located along Tamiami Trail East.";
     bigCypress.parkMap = [UIImage imageNamed:@"parkMaps/bigcypress.jpg"];
     bigCypress.parkImage = [UIImage imageNamed:@"bigParkImages/bigcypress.jpg"];
     bigCypress.smParkImage = [UIImage imageNamed:@"smallParkImages/bigcypress.jpg"];
    
    Parks * biscayne = [[Parks alloc] init];
    biscayne.name =@"Biscayne";
    biscayne.year= [self setDate:28 withMonth:6 andYear:1980];
    biscayne.location=@"Miami, Key Biscayne & Homestead, FL";
    biscayne.address=@"9700 SW 328th Street Sir Lancelot Jones Way Homestead, FL 33033";
    biscayne.parkDescription=@"Within sight of downtown Miami, yet worlds away, Biscayne protects a rare combination of aquamarine waters, emerald islands, and fish-bejeweled coral reefs. Here too is evidence of 10,000 years of human history, from pirates and shipwrecks to pineapple farmers and presidents. Outdoors enthusiasts can boat, snorkel, camp, watch wildlife…or simply relax in a rocking chair gazing out over the bay.";
    biscayne.parkDirections=@"The Dante Fascell Visitor Center may be reached from the Florida Turnpike by taking Exit 6 (Speedway Boulevard). Turn left from exit ramp and continue south to SW 328th Street (North Canal Drive). Turn left on 328th Street and continue for four miles to the end of the road. The park entrance is on the left just before the entrance to Homestead Bayfront Marina.";
    biscayne.parkMap = [UIImage imageNamed:@"parkMaps/biscayne.jpg"];
    biscayne.parkImage = [UIImage imageNamed:@"bigParkImages/biscayne.jpg"];
    biscayne.smParkImage = [UIImage imageNamed:@"smallParkImages/biscayne.jpg"];
   
    Parks * canaveral = [[Parks alloc] init];
    canaveral.name =@"Canaveral";
    canaveral.year= [self setDate:3 withMonth:1 andYear:1975];
    canaveral.location=@"Titusville and New Smyrna Beach, FL";
    canaveral.address=@"212 S Washington Ave, Titusville, FL 32796";
    canaveral.parkDescription=@"Since ancient times, this barrier island has provided sanctuary to both people and wildlife. Many threatened and endangered species find refuge here, including sea turtles who nest on its shores. Like first natives and early settlers, you too can find tranquility. Stroll down a wooded trail. Reflect on a pristine undeveloped shoreline - the way things used to be.";
    canaveral.parkDirections=@"The national seashore and the wildlife refuge, located midway on Florida's east coast between Daytona Beach and Melbourne, are accessible via U.S. 1, I-95, and Fla 528 (Beach Line Expressway). The northern access, Apollo Beach, is on Fla A1A at the southern-most end in New Smyrna Beach.";
    canaveral.parkMap = [UIImage imageNamed:@"parkMaps/canaveral.jpg"];
    canaveral.parkImage = [UIImage imageNamed:@"bigParkImages/canaveral.jpg"];
    canaveral.smParkImage = [UIImage imageNamed:@"smallParkImages/canaveral.jpg"];
    
    Parks * castillo = [[Parks alloc] init];
    castillo.name =@"Castillo de San Marcos";
    castillo.year= [self setDate:15 withMonth:10 andYear:1966];
    castillo.location=@"St. Augustine, FL";
    castillo.address=@"212 S Washington Ave, Titusville, FL 32796";
    castillo.parkDescription=@"A monument not only of stone and mortar but of human determination and endurance, the Castillo de San Marcos symbolizes the clash between cultures which ultimately resulted in our uniquely unified nation. Still resonant with the struggles of an earlier time, these original walls provide tangible evidence of America’s grim but remarkable history.";
    castillo.parkDirections=@"The national seashore and the wildlife refuge, located midway on Florida's east coast between Daytona Beach and Melbourne, are accessible via U.S. 1, I-95, and Fla 528 (Beach Line Expressway). The northern access, Apollo Beach, is on Fla A1A at the southern-most end in New Smyrna Beach.";
    castillo.parkMap = [UIImage imageNamed:@"parkMaps/canaveral.jpg"];
    castillo.parkImage = [UIImage imageNamed:@"bigParkImages/canaveral.jpg"];
    castillo.smParkImage = [UIImage imageNamed:@"smallParkImages/canaveral.jpg"];
    
    self.flParks = [NSMutableArray arrayWithObjects:bigCypress,biscayne,canaveral,castillo, nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.flParks count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellIdentifier = @"parkInfoCellId";
    ParkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    Parks *item = [self.flParks objectAtIndex:indexPath.row];
    // Configure the cell...
    cell.parkName.text = item.name;
    cell.parkName.font = [self boldFontWithFont:cell.parkName.font];
    cell.parkLocation.text = item.location;
    cell.parkImageView.image = item.smParkImage;
    return cell;
}

-(NSDate*) setDate:(int)aDay withMonth:(int)aMonth andYear:(int)aYear{
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setDay:aDay];
    [comps setMonth:aMonth];
    [comps setYear:aYear];
    NSDate *result =[[NSCalendar currentCalendar] dateFromComponents:comps];
    return result;
}

- (UIFont *)boldFontWithFont:(UIFont *)font
{
    UIFontDescriptor * fontD = [font.fontDescriptor
                                fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitBold];
    return [UIFont fontWithDescriptor:fontD size:0];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"showDetails"]){
        ParkDetailViewController *detailVC = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        Parks * item = [self.flParks objectAtIndex:myIndexPath.row];
        detailVC.myPark = item;
        
    }
}
@end
