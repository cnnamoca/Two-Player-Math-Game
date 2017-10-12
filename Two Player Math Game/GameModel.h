//
//  GameModel.h
//  Two Player Math Game
//
//  Created by Carlo Namoca on 2017-10-09.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;
@property (nonatomic) Player *currentPlayer;
@property NSString *question;
@property (nonatomic) NSInteger answer;

-(void) addCurrentPlayerScore;
-(void) decreaseCurrentPlayerHealth;
-(void)switchPlayers;
-(NSString *) askQuestionToCurrentPlayer;
//-(void)decreaseCurrentPlayerScore;

@end
