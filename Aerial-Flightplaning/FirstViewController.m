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

    PFQuery *query = [PFQuery queryWithClassName:@"Datas"];
    [query whereKey:@"User" equalTo:@"test"];
     NSArray* scoreArray = [query findObjects];
    auftragsArray = [scoreArray mutableCopy];

}
- (void)viewDidLoad {
      [super viewDidLoad];
      self.automaticallyAdjustsScrollViewInsets = NO;
      [[GlobalState Instance].helicopters addObject:@"HU300"];
      [[GlobalState Instance].helicopters addObject:@"JetRanger"];

    
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView.tag ==0) {
    PFObject* auswahl = [auftragsArray objectAtIndex:indexPath.row];
    [self.textFieldPilot setText:[auswahl valueForKey:@"Pilotenname"]];
    [self.textFieldFlughelfer setText:[auswahl valueForKey:@"Flughelfer"]];
    [self.textViewCrew setText:[auswahl valueForKey:@"Team"]];
    [self.textFieldKennzeichen setText:[auswahl valueForKey:@"Kennzeichen"]];
    
   // [self.pickerHubrschrauber ]
    }else{
        //kleine Table view
        
    }
    
}
//Table View Code

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
     if (tableView.tag ==0) {
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    PFObject *eintrag = [auftragsArray objectAtIndex:indexPath.row];
    cell.textLabel.text = [eintrag valueForKey:@"Durchfuehrungsdatum"];
    return cell;
     }else{
         UITableViewCell *cell = [[UITableViewCell alloc]init];
         NSMutableDictionary* Fluege = [[GlobalState Instance].Flugauftraege objectAtIndex:indexPath.row];
         NSString* text = [Fluege valueForKey:@"Abflugort"];
         cell.textLabel.text = text;
         return cell;
     }
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
     if (tableView.tag ==0) {
         return auftragsArray.count;
     }else{
         return [GlobalState Instance].Flugauftraege.count;
     }
}

- (NSArray *)tableView:(UITableView *)tableView
editActionsForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{     if (tableView.tag ==0) {
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    [auftragsArray removeObjectAtIndex:indexPath.row];
     }else{
         
     }
}

- (IBAction)buttonzuruecksetzen:(id)sender {
    [self.textFieldPilot setText:@""];
    [self.textFieldFlughelfer setText:@""];
    [self.textViewCrew setText:@""];
    [self.textFieldKennzeichen setText:@""];
    
}
@end
