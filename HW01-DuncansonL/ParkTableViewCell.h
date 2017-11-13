//
//  ParkTableViewCell.h
//  HW01-DuncansonL
//
//  Created by Langston Duncanson on 11/13/17.
//  Copyright © 2017 Langston Duncanson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParkTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *parkImageView;
@property (weak, nonatomic) IBOutlet UILabel *parkName;
@property (weak, nonatomic) IBOutlet UILabel *parkLocation;

@end
