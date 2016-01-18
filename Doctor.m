//
//  Doctor.m
//  Patient_Doctor2
//
//  Created by Kerry Toonen on 2016-01-16.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@class Patient;

@implementation Doctor

- (id)init {
    self = [super init];
    if (self) {
        _doctorName=[[NSString alloc] init];
        _specialization=[[NSString alloc] init];
        _patientList=[[NSMutableArray alloc]init];
        _infoform=[[NSMutableArray alloc]init];
        _prescriptionList=[[NSMutableArray alloc]init];

    }
    return self;
}

-(void)checkHealthcard:(Patient*)aPatient{
    NSLog(@"Please, fill out this form with all your name, age, healthcard, and symptoms.");

}

-(id)acceptPatient:(Patient*)aPatient {
    if ([aPatient.healthcard isEqualToString:@"YES"]){
    NSLog(@"Thank you. I will accept you as my patient");
        NSLog(@"Is this information correct? %@", self.patientList);}
    else
    NSLog(@"Sorry, you don't have a healthcard. Go away.");
    return NO;}



-(void)prescribeMeds:(Patient *)aPatient{
    [aPatient.prescription addObject:self.doctorName];
    [aPatient.prescription addObject:aPatient.patientName];
    if ([aPatient.symptoms containsObject:@"Fever"]) {
        [aPatient.prescription addObject:@"Tylenol"];}
    if ([aPatient.infoform containsObject:@"Tired"]) {
        [aPatient.prescription addObject: @"Coffee"]; }
    if ([aPatient.infoform containsObject:@"Indigestion"]){
        [aPatient.prescription addObject:@"Tums"];}
    if ([aPatient.infoform containsObject:@"Hungry"]){
        [aPatient.prescription addObject:@"Food"];}
    [self.prescriptionList addObject:aPatient.prescription];
    NSLog(@"Here is a prescription for:%@",aPatient.prescription);
}

-(void)addToPrescriptionList:(Doctors *)allPres{}


@end
