//
//  Car.m
//  Task03_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPCar.h"
#import "IDPWorker.h"

#import "IDPMacros.h"
#import "IDPRandom.h"

IDPStaticConstantRange(IDPCashRange, 100, 200)

#pragma mark -
#pragma mark Private declarations

@interface IDPCar ()
@property (nonatomic, assign) NSUInteger cash;

@end

@implementation IDPCar

#pragma mark -
#pragma mark Initializations

- (instancetype)init {
    self = [super init];
    self.state = IDPCarDirty;
    self.cash = IDPRandomWithRange(IDPCashRange);
    
    return self;
}

#pragma mark -
#pragma mark Public

- (NSUInteger)giveMoney {
    NSUInteger money = self.cash;
    self.cash = 0;
    
    return money;
}

- (void)takeMoney:(NSUInteger)money {
    self.cash += money;
}

- (void)takeMoneyFromObject:(id<IDPMoneyFlow>)object {
    [self takeMoney:[object giveMoney]];
}

@end
