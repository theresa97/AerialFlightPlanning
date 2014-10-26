//
//  FirstViewController.m
//  Aerial-Flightplaning
//
//  Created by Matthias Oberegger on 12.10.14.
//  Copyright (c) 2014 Matthias Oberegger. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)drawRect:(CGRect)rect
{
    
    self.textViewCrew.layer.borderWidth = 3.0;
    self.textViewCrew.layer.borderColor = [UIColor grayColor].CGColor;
    self.textViewCrew.layer.cornerRadius = 8;
}
@end
