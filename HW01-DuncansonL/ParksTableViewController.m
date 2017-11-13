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
    // Park Template
    /*Parks * name = [[Parks alloc] init];
    name.name =@"";
    name.year= [self setDate:(int) withMonth:<#(int)#> andYear:<#(int)#>];
    name.location=@"";
    name.address=@"";
    name.parkDescription=@"";
    name.parkImage = [UIImage imageNamed:@""];
    name.smParkImage = [UIImage imageNamed:@"smallParkImages/.jpg"];*/
    self.navigationItem.title = @"Florida National Park Directory";
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
    biscayne.parkMap = [UIImage imageNamed:@"parkMaps/biscayne.png"];
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
    castillo.year= [self setDate:15 withMonth:10 andYear:1924];
    castillo.location=@"St. Augustine, FL";
    castillo.address=@"1 S Castillo Dr, St Augustine, FL 32084";
    castillo.parkDescription=@"A monument not only of stone and mortar but of human determination and endurance, the Castillo de San Marcos symbolizes the clash between cultures which ultimately resulted in our uniquely unified nation. Still resonant with the struggles of an earlier time, these original walls provide tangible evidence of America’s grim but remarkable history.";
    castillo.parkDirections=@"The Castillo de San Marcos National Monument is located in downtown St. Augustine, Florida. St. Augustine is located on Florida’s Northeastern Atlantic coast about midway between Jacksonville and Daytona Beach. Nearby Jacksonville and Daytona are served by international airports with easy access to I-95. Rental cars are available at the airports and also in St. Augustine.";
    castillo.parkMap = [UIImage imageNamed:@"parkMaps/castillo.jpg"];
    castillo.parkImage = [UIImage imageNamed:@"bigParkImages/castillo.jpg"];
    castillo.smParkImage = [UIImage imageNamed:@"smallParkImages/castillo.jpg"];
    
    Parks * desoto = [[Parks alloc] init];
    desoto.name =@"De Soto";
    desoto.year= [self setDate:11 withMonth:3 andYear:1948];
    desoto.location=@"Bradenton, FL";
    desoto.address=@"8300 Desoto Memorial Hwy, Bradenton, FL 34209";
    desoto.parkDescription=@"In May 1539, Conquistador Hernando de Soto’s army of soldiers, hired mercenaries, craftsmen and clergy made landfall in Tampa Bay. They were met with fierce resistance of indigenous people protecting their homelands. De Soto’s quest for glory and gold would be a four year, four thousand mile odyssey of intrigue, warfare, disease, and discovery that would form the history of the United States.";
    desoto.parkDirections=@"From I-75 Take exit 220 (SR 64/Manatee Ave) Gulf Beaches exit. Travel west on SR 64 for approximately 12 miles to 75th St. W. Turn right onto 75th St. W. travel north approximately 2 miles to the northern terminus 75th St. W. turns into De Soto Memorial Hwy and dead ends into the park.\nFrom I-275 exit 5, follow US-19 into Bradenton. Turn west onto State Road 64, and proceed approximately five miles to 75th Street West. Turn right (north) onto 75th Street West, and proceed two and one half mile to the park entrance and the terminus of 75th Street/ De Soto Memorial Highway.\nFrom Cortez Ave travel west to 75th St. W. turn right. Travel north on 75th St. W. approximately 4 miles to northern terminus. 75th St. W. turns into De Soto Memorial Hwy and will dead end into park.";
    desoto.parkMap = [UIImage imageNamed:@"parkMaps/desoto.jpg"];
    desoto.parkImage = [UIImage imageNamed:@"bigParkImages/desoto.jpg"];
    desoto.smParkImage = [UIImage imageNamed:@"smallParkImages/desoto.jpg"];
    
    Parks * drytortugas = [[Parks alloc] init];
    drytortugas.name =@"Dry Tortugas";
    drytortugas.year= [self setDate:4 withMonth:1 andYear:1935];
    drytortugas.location=@"Key West, FL";
    drytortugas.address=@"24°37'43.0\"N 82°52'24.0\"W";
    drytortugas.parkDescription=@"Almost 70 miles (113 km) west of Key West lies the remote Dry Tortugas National Park. The 100-square mile park is mostly open water with seven small islands. Accessible only by boat or seaplane, the park is known the world over as the home of magnificent Fort Jefferson, picturesque blue waters, superlative coral reefs and marine life, and the vast assortment of bird life that frequent the area.";
    drytortugas.parkDirections=@"At Dry Tortugas you can enjoy dramatic natural and cultural features. Marine life concentrates near patches of live coral. You can explore the coral wonderlands in just three or four feet of water.\nDocking facilities are reserved for park-permitted ferries 10 am to 3 pm daily. Load, unload and moor vessels only as designated on the public dock and for up to two hours between sunrise and sunset.\nOvernight mooring to docks or piers is prohibited. Anchor overnight only within one nautical mile of the fort. To dump or pump holding tanks in park waters is prohibited.";
    drytortugas.parkMap = [UIImage imageNamed:@"parkMaps/drytortugas.jpg"];
    drytortugas.parkImage = [UIImage imageNamed:@"bigParkImages/drytortugas.jpg"];
    drytortugas.smParkImage = [UIImage imageNamed:@"smallParkImages/drytortugas.jpg"];
    
    Parks * everglades = [[Parks alloc] init];
    everglades.name =@"Everglades";
    everglades.year= [self setDate:30 withMonth:5 andYear:1934];
    everglades.location=@"Miami, Naples, and Homestead, FL";
    everglades.address=@"25°18'45.0\"N 80°41'15.0\"W";
    everglades.parkDescription=@"Everglades National Park protects an unparalleled landscape that provides important habitat for numerous rare and endangered species like the manatee, American crocodile, and the elusive Florida panther. An international treasure as well - a World Heritage Site, International Biosphere Reserve, a Wetland of International Importance, and a specially protected area under the Cartagena Treaty.";
    everglades.parkDirections=@"This is the main entrance for Everglades National Park. The Ernest F. Coe Visitor Center is located at this entrance, as well as Royal Palm and Flamingo.\nAddress: 40001 State Road 9336, Homestead, FL 33034\nThe Shark Valley Visitor Center is the entrance closest to the Greater Miami Area, Florida.\nAddress: 36000 SW 8th Street, Miami, FL 33194\nThe Gulf Coast Visitor Center is the entrance closest to Naples, Florida.\nAddress: 815 Oyster Bar Lane, Everglades City, FL 34139";
    everglades.parkMap = [UIImage imageNamed:@"parkMaps/everglades.jpg"];
    everglades.parkImage = [UIImage imageNamed:@"bigParkImages/everglades.jpg"];
    everglades.smParkImage = [UIImage imageNamed:@"smallParkImages/everglades.jpg"];
    
    Parks * fortcaroline = [[Parks alloc] init];
    fortcaroline.name =@"Fort Caroline";
    fortcaroline.year= [self setDate:16 withMonth:1 andYear:1953];
    fortcaroline.location=@"the Timucuan Preserve; Jacksonville, FL";
    fortcaroline.address=@"12713 Fort Caroline Road Jacksonville, FL 32225 ";
    fortcaroline.parkDescription=@"At the settlement of la Caroline, French settlers struggled for survival in a new world.  Many sought religious freedom in a new land, while others were soldiers or tradesmen starting a new life.  The climactic battles fought here between the French and Spanish marked the first time that European nations fought for control of lands in what is now the United States.  It would not be the last time. ";
    fortcaroline.parkDirections=@"The beautiful expanse of the Timucuan Preserve is located within the city limits of Jacksonville, Florida. The Preserve can be accessed from major roads and highways in and around Jacksonville. Directions to individual park sites such as Kingsley Plantation, American Beach and the Ribault Column can be found on our website. Our main visitor center is located at Fort Caroline, about 14 miles northeast of downtown.";
    fortcaroline.parkMap = [UIImage imageNamed:@"parkMaps/fortcaroline.jpg"];
    fortcaroline.parkImage = [UIImage imageNamed:@"bigParkImages/fortcaroline.jpg"];
    fortcaroline.smParkImage = [UIImage imageNamed:@"smallParkImages/fortcaroline.jpg"];
    
    Parks * fortmatanzas = [[Parks alloc] init];
    fortmatanzas.name =@"Fort Mantanzas";
    fortmatanzas.year= [self setDate:15 withMonth:10 andYear:1924];
    fortmatanzas.location=@"St. Augustine, FL";
    fortmatanzas.address=@"8635 A1A South Saint Augustine, FL 32080 ";
    fortmatanzas.parkDescription=@"Coastal Florida was a major field of conflict as European nations fought for control in the New World. As part of this struggle, Fort Matanzas guarded St. Augustine’s southern river approach. The colonial wars are over, but the monument is still protecting—not just the historic fort, but also the wild barrier island and the plants and animals who survive there amidst a sea of modern development";
    fortmatanzas.parkDirections=@"Fort Matanzas is 14 miles south of Saint Augustine on State Route A1A.";
    fortmatanzas.parkMap = [UIImage imageNamed:@"parkMaps/fortmatanzas.jpg"];
    fortmatanzas.parkImage = [UIImage imageNamed:@"bigParkImages/fortmatanzas.jpg"];
    fortmatanzas.smParkImage = [UIImage imageNamed:@"smallParkImages/fortmatanzas.jpg"];
    
    self.flParks = [NSMutableArray arrayWithObjects:bigCypress,biscayne,canaveral,castillo,desoto,drytortugas,everglades,fortcaroline,fortmatanzas, nil];
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
    cell.parkLocation.font = [self italicsFontWithFont:cell.parkLocation.font];
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
- (UIFont *)italicsFontWithFont:(UIFont *)font
{
    UIFontDescriptor * fontD = [font.fontDescriptor
                                fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitItalic];
    return [UIFont fontWithDescriptor:fontD size:0];
}/*
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
