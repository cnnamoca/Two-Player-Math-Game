//
//  Player.m
//  Two Player Math Game
//
//  Created by Carlo Namoca on 2017-10-09.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "Player.h"

@interface Player()



@end

@implementation Player

- (instancetype)initWithName:(NSString *)playerName
{
    self = [super init];
    if (self) {
        _health = 3;
        _name = playerName;
        _score = 0;

    }
    return self;
}




@end
