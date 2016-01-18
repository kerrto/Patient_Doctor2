//
//  Patient.h
//  Patient_Doctor2
//
//  Created by Kerry Toonen on 2016-01-16.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@class Doctor;

@interface Patient : NSObject

//Properties


@property (nonatomic, strong)NSString *patientName;
@property (nonatomic, strong)NSString *patientAge;
@property (nonatomic)NSString *healthcard;
@property (nonatomic, strong)NSMutableArray *prescription;
@property  (nonatomic, strong)NSMutableArray *infoform;
@property (nonatomic, strong)NSArray *symptoms;
//Instances

-(void)visitTheDoctor:(Doctor*)theDoc;
-(void)giveHealthCard:(Doctor*)theDoc;
-(void)giveInfo:(Doctor*)theDoc;
-(void)takePrescription;
//Initializer



@end

