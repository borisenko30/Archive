//
//  IDPPersonTests.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPPersonTests.h"

#import "IDPPerson.h"
#import "IDPMalePerson.h"
#import "IDPFemalePerson.h"

#import "IDPConstants.h"
#import "IDPRandom.h"

#import "NSArray+IDPExtensions.h"
#import "NSObject+IDPExtensions.h"

void IDPPersonTest() {
    NSArray *children = [NSArray objectsWithCount:IDPMaxArrayLength
                                    factoryBlock:^ {
                                        return IDPRandomBool() ? [IDPMalePerson object] : [IDPFemalePerson object];
                                    }];
    
    for (IDPPerson *child in children) {
        [child performGenderSpecificOperation];
    }
}
