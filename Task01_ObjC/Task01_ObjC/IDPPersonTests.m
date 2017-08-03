//
//  IDPPersonTests.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPPersonTests.h"

#import "IDPPerson.h"

#import "IDPConstants.h"

#import "NSObject+IDPExtensions.h"
#import "NSArray+IDPExtensions.h"

void IDPPersonTest() {
    NSArray *children = [IDPPerson objectsWithCount:IDPMaxArrayLength];
    for (IDPPerson *person in children) {
        if (person.gender == IDPMale) {
            [person makeWarNotLove];
        } else {
            [person child];
        }
    }
}
