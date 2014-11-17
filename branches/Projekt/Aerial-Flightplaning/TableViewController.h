//
//  TableViewController.h
//  Aerial-Flightplaning
//
//  Created by Patrick Wyruch on 17/11/14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic,strong) NSArray *Titel;
@property (nonatomic,strong) NSArray *Description;

@end
