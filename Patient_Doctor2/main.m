//
//  main.m
//  Patient_Doctor2
//
//  Created by Kerry Toonen on 2016-01-16.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
  
    
    Doctor *carl = [[Doctor alloc] init];
    carl.doctorName = @"Carl Banks";
    carl.specialization = @"Neurologist";
    
    Doctor *john = [[Doctor alloc] init];
    john.doctorName = @"John Smith";
    john.specialization = @"Pediatrician";
    
    Doctor *kerry = [[Doctor alloc] init];
    kerry.doctorName =@"Kerry Toonen";
    kerry.specialization=@"Dentist";
  
    
    Patient *jeff=[[Patient alloc] init];
    jeff.patientName = @"Jeff Green";
    jeff.patientAge= @"42";
    jeff.healthcard=@"YES";
    jeff.symptoms=@[@"Fever",@"Hungry",@"Tired"];

    Patient *rita=[[Patient alloc] init];
    rita.patientName = @"Rita Young";
    rita.patientAge= @"40";
    rita.healthcard=@"YES";
    rita.symptoms=@[@"Indigestion", @"Tired",@"Hungry"];
    
    Patient *hyunsoo=[[Patient alloc] init];
    hyunsoo.patientName = @"Hyunsoo Kim";
    hyunsoo.patientAge= @"37";
    hyunsoo.healthcard=@"YES";
    hyunsoo.symptoms=@[@"Tired", @"Indigestion", @"Fever"];

    
    [jeff visitTheDoctor:kerry];
    [kerry checkHealthcard:jeff];
    [jeff giveInfo:kerry];
    [jeff giveHealthCard:kerry];
    [kerry.patientList addObject:jeff];
    [kerry prescribeMeds:jeff];
    [jeff.prescription addObject:kerry.doctorName];
    [jeff.prescription addObject:jeff.patientName];
    if ([jeff.symptoms containsObject:@"Fever"]) {
        [jeff.prescription addObject:@"Tylenol"];}
    if ([jeff.symptoms containsObject:@"Tired"]) {
        [jeff.prescription addObject: @"Coffee"]; }
    if ([jeff.symptoms containsObject:@"Indigestion"]){
        [jeff.prescription addObject:@"Tums"];}
    if ([jeff.infoform containsObject:@"Hungry"]){
        [jeff.prescription addObject:@"Food"];}
    NSLog(@"New Prescription:%@",jeff.prescription);
  
    
    
return 0;
}
