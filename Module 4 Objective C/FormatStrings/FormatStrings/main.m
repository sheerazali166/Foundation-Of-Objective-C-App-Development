//
//  main.m
//  FormatStrings
//
//  Created by Sheeraz on 7/26/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // Program 1
    
    // Do you recall seeing code loike this?
    
    printf("---------Program 1----------\n");
    
    char *timeOfDay = "morning";
    
    printf("Good %s\n", timeOfDay);
    
    // Program 2
    
    // What is going on there?
    
    // Finally if you have multiple tokens you have multiple parameters
    
    // It means spider also takli
    
    printf("\n---------Program 2----------\n");
    
    char *timeOfDay2 = "morning";
    long longA = 1343489823;
    float floatB = 2.3;
    char charC = 'Y'; // Sinple Qoutes
    int intD = 65;
    
    printf("Good %s, you have %ld credits left\n", timeOfDay, longA);
    printf("Your score is %f and your middle initial is \"%c\"\n", floatB, charC);
    printf("You have %d%% left to go\n", intD);
    
    return 0;
}
