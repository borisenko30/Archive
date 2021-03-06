//
//  IDPCarFlow.m
//  Task06_Observer_Objc
//
//  Created by Student003 on 5/30/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPCarDispatcher.h"

#import "IDPEnterprise.h"
#import "IDPCar.h"
#import "IDPQueue.h"
#import "IDPTimerProxy.h"

#import "IDPMacros.h"

#import "NSObject+IDPExtensions.h"
#import "NSArray+IDPExtensions.h"
#import "NSTimer+IDPExtensions.h"

IDPStaticConstant(NSUInteger, IDPCarsQuantity, 10)
IDPStaticConstant(CGFloat, IDPTimerInterval, 2.0f)

@interface IDPCarDispatcher ()
@property (nonatomic, retain) NSTimer       *timer;
@property (nonatomic, retain) IDPEnterprise *enterprise;

@end

@implementation IDPCarDispatcher

#pragma mark -
#pragma mark Deallocations and initializations

- (void)dealloc {
    self.timer = nil;
    self.enterprise = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    self.enterprise = [IDPEnterprise object];
    self.timer = [[NSTimer new] autorelease];
    
    return self;
}

#pragma mark -
#pragma mark Accessors

- (void)setTimer:(NSTimer *)timer {
    if (timer != _timer) {
        [_timer invalidate];
        [_timer release];
        
        _timer = [timer retain];
    }
}

- (void)setRunning:(BOOL)running {
    if (running == _running) {
        return;
    }
    
    _running = running;
    
    if (running) {
        [self start];
    } else {
        [self stop];
    }
}

#pragma mark -
#pragma mark Private

- (void)start {
    self.timer = [NSTimer weakTargetTimerWithInterval:IDPTimerInterval
                                               target:self
                                             selector:@selector(addCars)
                                             userInfo:nil
                                              repeats:YES];
}

- (void)stop {
    self.timer = nil;
}

- (void)addCars {
    [self.enterprise washCars:[IDPCar objectsWithCount:IDPCarsQuantity]];
}

@end
