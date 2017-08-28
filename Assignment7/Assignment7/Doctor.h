//
//  Doctor.h
//  Assignment7
//
//  Created by まどか on 2017-08-26.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Rx.h"

@class Patient;

@interface Doctor : NSObject


@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *acceptedPatients;


-(instancetype)initWithName:(NSString *)doctorName andSpecialization:(NSString *)doctorSpecialty;
-(BOOL)acceptPatient:(Patient *)patient;
-(BOOL)requestMedication:(Patient *)patient;
-(NSMutableDictionary *)prescribeRx:(Patient *)patient;

@end
