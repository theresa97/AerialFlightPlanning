//
//  GlobalState.m
//  L17 Distance Contol
//
//  Created by Matthias Oberegger on 05.08.13.
//  Copyright (c) 2013 Matthias Oberegger. All rights reserved.
//

#import "GlobalState.h"

@implementation GlobalState
@synthesize helicopters;


+(GlobalState *)Instance {
    static GlobalState *instance = nil;
    if (instance == nil) {
        instance = [[GlobalState alloc] init];
    }
    return instance;
}

- (NSString *)dataFilePath:(NSString *)pDataFile {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return [documentsDirectory stringByAppendingPathComponent:pDataFile];
}

-(NSMutableArray*)load{
    NSMutableArray *preferences = [NSMutableArray arrayWithContentsOfFile:[self dataFilePath:@"Data.txt"]];
	if (preferences == nil) {
        preferences = [[NSMutableArray alloc] init];
	} else {
	}
    
    return preferences;
}

-(void)save:(NSMutableArray*)file {
    if (file != nil) [file writeToFile:[self dataFilePath:@"Data.txt"] atomically:NO];
    
    
}



@end
