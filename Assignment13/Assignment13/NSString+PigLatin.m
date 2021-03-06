//
//  NSObject+NSString_PigLatin.m
//  Assignment13
//
//  Created by まどか on 2017-08-25.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatinization)

-(NSString *)stringByPigLatinization {
    
    NSArray *words = [self componentsSeparatedByString: @" "];
    NSMutableString *sentence = [NSMutableString new];
    for (NSString *word in words) {
        NSMutableArray *letters = [self getArrayOfLettersInWord:word];
        NSString *newWord = [[self moveFirstConsonantToEndIn:letters] componentsJoinedByString:@""];
        [sentence appendString:newWord];
        [sentence appendString:@"ay "];
    }
    NSLog(@"%@",sentence);
    
    return self;
}

-(NSMutableArray *)getArrayOfLettersInWord:(NSString *)word {
    NSMutableArray *arrayOfLetters = [NSMutableArray new];
    
    for (int i = 0; i < word.length; i++) {
        NSString *letter = [NSString stringWithFormat:@"%c",[word characterAtIndex:i]];
        [arrayOfLetters addObject:letter];
    }
    return arrayOfLetters;
}

-(NSMutableArray *)moveFirstConsonantToEndIn:(NSMutableArray *)letters {
    NSMutableArray *firstConsonant = [NSMutableArray new];
    
    NSSet *vowels = [[NSSet alloc]initWithObjects:@"a",@"e",@"i",@"o",@"u",@"y",@"A",@"E",@"I",@"O",@"U",@"Y", nil];
    int i = 0;
    while (![vowels containsObject:letters[i]]) {
        NSString *letter = letters[i];
        [firstConsonant addObject:letter];
        [letters removeObject:letter];
        
    }
    [letters addObjectsFromArray:firstConsonant];
    return letters;
}

@end
