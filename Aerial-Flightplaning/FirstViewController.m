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

@implementation FirstViewController{
    NSInteger selectedComponent;
    NSMutableArray* auftragsArray;
}

-(void)viewWillAppear:(BOOL)animated{

        
}
- (void)viewDidLoad {
      [super viewDidLoad];
      self.automaticallyAdjustsScrollViewInsets = NO;
      [[GlobalState Instance].helicopters addObject:@"HU300"];
      [[GlobalState Instance].helicopters addObject:@"JetRanger"];

    PFQuery *query = [PFQuery queryWithClassName:@"Datas"];
    [query whereKey:@"User" equalTo:[GlobalState Instance].logedInUser.username];
    auftragsArray = [[query findObjects] mutableCopy];
    
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

- (IBAction)buttonSendeZuCloud:(UIButton *)sender {
    PFObject *data = [PFObject objectWithClassName:@"Datas"];
    
    NSDate *date = self.pickerDateDatum.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"dd.MM yyyy HH:mm"];
    NSString *dateString = [formatter  stringFromDate:date];
    
    
    data[@"User"] = @"test";//[GlobalState Instance].logedInUser.username;
    data[@"Pilotenname"] = self.textFieldPilot.text;
    data[@"Flughelfer"] = self.textFieldFlughelfer.text;
    data[@"Team"] = self.textViewCrew.text;
    data[@"Hubschraubername"] = [[GlobalState Instance].helicopters objectAtIndex:selectedComponent];
    data[@"Durchfuehrungsdatum"] = dateString;
    data[@"Kennzeichen"]=self.textFieldKennzeichen.text;
    [data saveInBackground];
    
    [self.textFieldPilot setText:@""];
    [self.textFieldFlughelfer setText:@""];
    [self.textViewCrew setText:@""];
    [self.textFieldKennzeichen setText:@""];

//  self.pickerDateDatum setDate:
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Info" message:@"Daten gespeichert" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil,nil];
    [alert show];
    

    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{ // SPALTN
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    //REIHEN
   return [[GlobalState Instance].helicopters count]; // Änderung– Daten von M.
   
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
       return [[GlobalState Instance].helicopters objectAtIndex:row]; //DATEN von M
    
    
   }

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    selectedComponent = row;
    
}

//Table View Code

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    PFObject *eintrag = [auftragsArray objectAtIndex:indexPath.row];
    cell.textLabel.text = [eintrag valueForKey:@"User"];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    
    
    return auftragsArray.count;
}

- (NSArray *)tableView:(UITableView *)tableView
editActionsForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        PFObject *ob = [auftragsArray objectAtIndex:indexPath.row];
       
        PFQuery *query = [PFQuery queryWithClassName:@"Datas"];
        [query whereKey:@"User" equalTo:[PFUser currentUser].username];
        [query whereKey:@"Durchfuehrungsdatum" equalTo:[ob valueForKey:@"Durchfuehrungsdatum"]];
        [query getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error) {
            if (!object) {
                NSLog(@"The getFirstObject request failed.");
            } else {
                // The find succeeded.
                NSLog(@"Successfully retrieved the object.");
                [object deleteInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
                    if (succeeded && !error) {
                        NSLog(@"like deleted from parse");
                    } else {
                        NSLog(@"error: %@", error); 
                    }
                }];
            }
        }];
         [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        [auftragsArray removeObjectAtIndex:indexPath.row];
    }
}

@end
