//
//  IDPFemalePerson.m
//  Task02_ObjC
//
//  Created by Admin on 06.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import "IDPFemalePerson.h"

#import "NSObject+IDPExtensions.h"

@implementation IDPFemalePerson

- (IDPPerson *)child {
    NSLog(@"A new person was born!");

    return [IDPPerson object];
}

- (void)performGenderSpecificOperation {
    [self child];
}

@end
