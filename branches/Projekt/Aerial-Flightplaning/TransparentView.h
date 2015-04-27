//
//  TransparentView.h
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 30.01.15.
//  Copyright (c) 2015 Matthias Oberegger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TransparentView : UIView

@property (strong, nonatomic) NSNumber* cgdif;
@property (strong, nonatomic) NSNumber* cgdifLat;
@property BOOL noDrwaing;

-(void)setCGlong:(NSNumber *)cglong setCGlat:(NSNumber *)cglat setDrawingDisabled:(BOOL)drawing;

@end
