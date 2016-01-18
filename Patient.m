//
//  Patient.m
//  Patient_Doctor2
//
//  Created by Kerry Toonen on 2016-01-16.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient


- (id)init {
    self = [super init];
    if (self) {
        _patientName=[[NSString alloc] init];
        _patientAge=[[NSString alloc] init];
        _healthcard=[[NSString alloc]init];
        _prescription=[[NSMutableArray alloc]init];
        _infoform=[[NSMutableArray alloc]init];
        _symptoms=[[NSMutableArray alloc]init];
    
    }
    return self;
}
    
    
-(void)visitTheDoctor:(Doctor*)theDoc {
        NSLog(@"Hi, I'm %@. I'm sick. I'd like to see Dr.%@", _patientName,[theDoc doctorName]);
}

-(void)giveHealthCard:(Doctor*)theDoc; {
    if ([self.healthcard isEqualToString:@"YES"]) {
        NSLog(@"Here you go");
    }
    else {
        NSLog(@"I don't have a healthcard");}
}


-(void)giveInfo:(Doctor*)theDoc {
   }

-(void)takePrescription {
    
}





@end
