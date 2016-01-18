//
//  Doctor.h
//  Patient_Doctor2
//
//  Created by Kerry Toonen on 2016-01-16.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Doctors.h"
@class  Patient;



@interface Doctor : NSObject


@property (nonatomic, strong) NSString *doctorName;

@property (nonatomic, strong) NSString *specialization;

@property (nonatomic, strong) NSMutableArray *patientList;

@property (nonatomic, strong) NSMutableArray *prescriptionList;

@property (nonatomic, strong) NSMutableArray *infoform;


//Variables
-(void)checkHealthcard:(Patient*)aPatient;
-(id)acceptPatient:(Patient*)aPatient;
-(void)prescribeMeds:(Patient *)aPatient;
-(void)addToPrescriptionList:(Doctors *)allPres;




@end
