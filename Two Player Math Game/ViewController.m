//
//  ViewController.m
//  Two Player Math Game
//
//  Created by Carlo Namoca on 2017-10-09.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (strong, nonatomic) NSMutableString *combinedNumberInput;
@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;

@property (strong, nonatomic) GameModel *gameModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gameModel = [[GameModel alloc]init];
    self.questionLabel.text = self.gameModel.askQuestionToCurrentPlayer;
    
    self.combinedNumberInput = [[NSMutableString alloc]init];
    
    //set player scores
    int x = self.gameModel.player1.score;
    int y = self.gameModel.player2.score;
    self.player1Score.text = [NSString stringWithFormat: @"Player 1 score: %d", x];
    self.player2Score.text = [NSString stringWithFormat: @"Player 2 score: %d", y];
}

-(IBAction)inputButtons:(UIButton*)sender
{
    NSString *input = [NSString stringWithFormat:@"%ld", (long)sender.tag];
    self.combinedNumberInput = [[self.combinedNumberInput stringByAppendingString:input] mutableCopy];
    self.inputTextField.text = self.combinedNumberInput;
}

- (IBAction)answerButton:(id)sender {
    int x = [self.combinedNumberInput integerValue];
    
    if (self.gameModel.answer != x) { //if we got the answer wrong
        [self.gameModel decreaseCurrentPlayerHealth];
        if (self.gameModel.currentPlayer.health == 0){
            self.questionLabel.text = @"GAME OVER";
            
            return;
        }
       
    } else { //we got the answer right
        [self.gameModel addCurrentPlayerScore];
    }
    self.player1Score.text = [NSString stringWithFormat: @"Player 1 score: %d", self.gameModel.player1.score];
    self.player2Score.text = [NSString stringWithFormat: @"Player 2 score: %d", self.gameModel.player2.score];
    [self.gameModel switchPlayers];
    self.questionLabel.text = self.gameModel.askQuestionToCurrentPlayer;
    self.inputTextField.text = (@"");
    self.combinedNumberInput = [NSString stringWithFormat:@""];
}



@end
