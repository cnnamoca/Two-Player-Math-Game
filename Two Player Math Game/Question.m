//
//  Question.m
//  Two Player Math Game
//
//  Created by Carlo Namoca on 2017-10-09.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "Question.h"

@interface Question()

@property (readonly, nonatomic) int rightvalue;
@property (readonly, nonatomic) int leftvalue;
@property NSString *question;

@end

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightvalue = arc4random_uniform(20) + 1;
        _leftvalue = arc4random_uniform(20) + 1;
        
        _question = [NSString stringWithFormat:@"%d+%d", _rightvalue, _leftvalue];
    }
    return self;
}

@end
