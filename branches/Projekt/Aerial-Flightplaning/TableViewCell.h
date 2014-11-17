//
//  TableViewCell.h
//  Aerial-Flightplaning
//
//  Created by Patrick Wyruch on 17/11/14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property(strong,nonatomic) IBOutlet UILabel *TitleLabel;
@property(strong,nonatomic) IBOutlet UILabel *DescriptionLabel;

@end
