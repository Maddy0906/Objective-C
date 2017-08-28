//
//  Patient.h
//  Assignment7
//
//  Created by まどか on 2017-08-26.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Doctor.h"

@class Doctor;

@interface Patient : NSObject


@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) int healthCard;
@property (nonatomic, strong) NSMutableSet *symptoms;


-(instancetype)initWithName:(NSString *)patientName andAge:(int)patientAge andHealthCare:(int)healthCard andSymptoms:(NSMutableSet *)patientSymptoms;
-(void)visitDoctor:(Doctor *)doctor;


@end
