//
//  FlugViewController.m
//  Aerial-Flightplaning
//
//  Created by Patrick Wyruch on 22/02/15.
//  Copyright (c) 2015 Matthias Oberegger. All rights reserved.
//

#import "FlugViewController.h"
#import "GlobalState.h"
@interface FlugViewController ()

@end

@implementation FlugViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)FlugSpeichern:(id)sender {
    NSDictionary *dictionary;
    
    NSString *abflugort = self.Flugort.text;
    NSString *startzeit = self.Startzeit.text;
    NSString *ankunftsort = self.Flugort.text;
    NSString *landezeit = self.Ladezeit.text;
    NSString *dauer = self.Dauer.text;
    NSString *flugart = self.Flugart.text;
    
    
    [dictionary setValue:abflugort forKey:@"Abflugort"];
    [dictionary setValue:startzeit forKey:@"Startzeit"];
    [dictionary setValue:ankunftsort forKey:@"Ankunftsort"];
    [dictionary setValue:landezeit forKey:@"Landezeit"];
    [dictionary setValue:dauer forKey:@"Dauer"];
    [dictionary setValue:flugart forKey:@"Flugart"];
    
    
    [[GlobalState Instance].Flugauftraege addObject:dictionary];
    
    
    
    
}
@end
