//
//  main.m
//  Assignment3
//
//  Created by まどか on 2017-08-21.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "inputHandler.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    // Boolean to control loop
    BOOL runLoop = true;
    
    // Track player score
    ScoreKeeper *myScore = [[ScoreKeeper alloc]init];
        
    // Track player time
    QuestionManager *questionArray = [[QuestionManager alloc] init];
    
    // To create random questions
    QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
    
    // Print greeting and request
    NSLog(@"MATHS!\n");
    
    // Start operations loop
    while (runLoop) {
        
        // Ask player if they would like to play a game
        NSLog(@"Type quit to exit:\n");
        
        // Pose a random math question
        Question *theQuestion = [questionFactory generateRandomQuestion];
        NSLog(@"%@", theQuestion.question);
        
        // add count of quesion
        [questionArray.questions addObject: theQuestion];
        
        // Read player answer
        NSString *answerString = [inputHandler getUserInput];
        
        // When put "quit"
        if ([answerString isEqualToString:@"quit"]){
            NSLog(@"%@", [myScore getTheScore]);
             NSLog(@"%@", [questionArray timeOutput]);
            break;
        }
        
        // check answer
        else {
            // Convert anser to integer, check answer for correctness, output feedback
            float playerAnswer = [answerString floatValue];

            
            if(playerAnswer == theQuestion.answer) {
                myScore.numOfCorrectAnswers = myScore.numOfCorrectAnswers + 1;
                NSLog(@"Right!");
                
            }
            else {
                myScore.numOfIncorrectAnswers = myScore.numOfIncorrectAnswers + 1;
                NSLog(@"Wrong!");
            }
            
            // Log current score and time stats
            NSLog(@"%@", [myScore getTheScore]);
            NSLog(@"%@", [questionArray timeOutput]);
            
        }
        
        // continue in while loop
        continue;
        
    }
    
}
return 0;
}
