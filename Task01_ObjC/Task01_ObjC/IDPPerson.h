//
//  Person.h
//  Task01_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, IDPGender) {
    IDPMale,
    IDPFemale
};

@interface IDPPerson : NSObject
@property (nonatomic, assign)   IDPGender   gender;
@property (nonatomic, copy)     NSString    *name;
@property (nonatomic, copy)     NSNumber    *weight;
@property (nonatomic, assign)   NSUInteger  age;

@property (nonatomic, readonly, copy) NSArray *children;

- (IDPPerson *)child;
- (void)makeWarNotLove;
- (void)sayHi;

- (void)addChild:(IDPPerson *)child;
- (void)removeChild:(IDPPerson *)child;

@end
