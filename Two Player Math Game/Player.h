//
//  Player.h
//  Two Player Math Game
//
//  Created by Carlo Namoca on 2017-10-09.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Player : NSObject

@property (nonatomic) int score;
@property (nonatomic) int health;
@property (nonatomic) NSString *name;

-(instancetype)initWithName:(NSString *)playerName;

@end
