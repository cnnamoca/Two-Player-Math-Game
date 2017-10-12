//
//  ScoreKeeper.m
//  Two Player Math Game
//
//  Created by Carlo Namoca on 2017-10-10.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)outputScore {
    
    NSLog(@"Player1: %i rights and %i wrongs ---%i ", _right);
    
}

-(int)countOfRight {
    _right++;
    return _right;
}

-(int)countOfWrong {
    _wrong++;
    return _wrong;
}

@end
