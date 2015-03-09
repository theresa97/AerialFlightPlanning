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
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    
    NSString *abflugort = self.Flugort.text;
    NSString *startzeit = self.Startzeit.text;
    NSString *ankunftsort = self.Flugort.text;
    NSString *landezeit = self.Ladezeit.text;
    NSString *dauer = self.Dauer.text;
    NSString *flugart = self.Flugart.text;
    
    
    [dict setValue:abflugort forKey:@"Abflugort"];
    [dict setValue:startzeit forKey:@"Startzeit"];
    [dict setValue:ankunftsort forKey:@"Ankunftsort"];
    [dict setValue:landezeit forKey:@"Landezeit"];
    [dict setValue:dauer forKey:@"Dauer"];
    [dict setValue:flugart forKey:@"Flugart"];
    
    PFQuery *query = [PFQuery queryWithClassName:@"Datas"];
    [query whereKey:@"User" equalTo:@"test"];
    NSArray* scoreArray = [query findObjects];
    
    [[GlobalState Instance].Flugauftraege addObject:dict];
    
    [self.navigationController popViewControllerAnimated:TRUE];
    
    
}
@end
