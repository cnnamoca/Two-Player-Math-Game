//
//  ScoreKeeper.h
//  Two Player Math Game
//
//  Created by Carlo Namoca on 2017-10-10.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int right;
@property int wrong;

-(void)outputScore;
-(int)countOfRight;
-(int)countOfWrong;

@end
