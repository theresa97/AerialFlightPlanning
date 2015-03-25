//
//  GlobalState.h
//  L17 Distance Contol
//
//  Created by Matthias Oberegger on 05.08.13.
//  Copyright (c) 2013 Matthias Oberegger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface GlobalState : NSObject
@property NSMutableArray *helicopters; // array for PickerView with all stored Helicopters
@property NSMutableArray *allCheckLists;


+(GlobalState *)Instance;
- (NSString *)dataFilePath:(NSString *)pDataFile;
-(NSMutableArray*)load;
-(void)save:(NSMutableArray*)file;

@property PFUser *logedInUser;
@property NSMutableArray *Flugauftraege;
@property NSMutableArray *fluege;
@end
