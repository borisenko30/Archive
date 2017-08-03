//
//  Person.h
//  Task01_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IDPPerson : NSObject
@property (nonatomic, copy)     NSString    *name;
@property (nonatomic, copy)     NSNumber    *weight;
@property (nonatomic, assign)   NSUInteger  age;

@property (nonatomic, readonly, copy) NSArray *children;

- (void)addChild:(IDPPerson *)child;
- (void)removeChild:(IDPPerson *)child;

- (void)sayHi;
- (void)performGenderSpecificOperation;

@end
