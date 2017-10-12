//
//  GameModel.m
//  Two Player Math Game
//
//  Created by Carlo Namoca on 2017-10-09.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "GameModel.h"

@interface GameModel()


@end

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        //init your players
        _player1 = [[Player alloc]initWithName:@"PLAYER1"];
        _player2 = [[Player alloc]initWithName:@"PLAYER2"];
        
        _currentPlayer = _player1;

        
    }
    return self;
}

-(NSString *) askQuestionToCurrentPlayer {
    
    int rightvalue = arc4random_uniform(20) + 1;
    int leftvalue = arc4random_uniform(20) + 1;
    
    _answer = rightvalue + leftvalue;
    
    self.question = [NSString stringWithFormat:@"%@: %d+%d", self.currentPlayer.name, rightvalue, leftvalue];
    return self.question;
}


-(void)switchPlayers {
    
    if (self.currentPlayer == self.player1) {
        self.currentPlayer = self.player2;
    } else {
        self.currentPlayer = self.player1;
    }
}

-(void)decreaseCurrentPlayerHealth
{
    self.currentPlayer.health = self.currentPlayer.health -1;
}

-(void)addCurrentPlayerScore
{
    self.currentPlayer.score = self.currentPlayer.score +1;
}
// DIDN'T NEED THIS >.>
//-(void)decreaseCurrentPlayerScore
//{
//    self.currentPlayer.score = self.currentPlayer.score -1;
//}


@end
