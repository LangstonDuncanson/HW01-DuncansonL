//
//  Parks.h
//  HW01-DuncansonL
//
//  Created by Langston Duncanson on 11/13/17.
//  Copyright © 2017 Langston Duncanson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Parks : NSObject
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSDate* year;
@property (strong, nonatomic) NSString* location;
@property (strong, nonatomic) NSString* address;
@property (strong, nonatomic) NSString* parkDescription;
@property (strong, nonatomic) NSString* parkDirections;
@property (strong, nonatomic) UIImage* parkImage;
@property (strong, nonatomic) UIImage* smParkImage;
@property (strong, nonatomic) UIImage* parkMap;
@end
