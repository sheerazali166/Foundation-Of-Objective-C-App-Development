//
//  main.m
//  Loops
//
//  Created by Sheeraz on 7/16/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSLog(@"Program 1");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"<<<<<<-------||||||******||||-------->>>>>>");
    
    NSLog(@"Program 2");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"<<<<<<-------||||||******||||-------->>>>>>");
    
    NSLog(@"Program 3");
    
    NSLog(@"Greetings 1");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"Greetings 2");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"Greetings 3");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"Greetings 4");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"Greetings 5");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"Greetings 6");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"Greetings 7");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"Greetings 8");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"Greetings 9");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"Greetings 10");
    
    NSLog(@"Good Morning!\n");
    NSLog(@"Good Afternoon!\n");
    NSLog(@"Good Evening!\n");
    
    NSLog(@"<<<<<<-------||||||******||||-------->>>>>>");
    
    NSLog(@"Program 4");
    
    // While Loop
    
    int counter = 0;
    
    while (counter < 1) {
        
        NSLog(@"Good Morning!\n");
        NSLog(@"Good Afternoon!\n");
        NSLog(@"Good Evening!\n");
        
        counter = counter + 1;
    }


    NSLog(@"<<<<<<-------||||||******||||-------->>>>>>");
    
    NSLog(@"Program 5");
    
    int counterTwo = 0;
    
    while (counterTwo < 2) {
        
        NSLog(@"Good Morning!\n");
        NSLog(@"Good Afternoon!\n");
        NSLog(@"Good Evening!\n");
        
        counterTwo = counterTwo + 1;
        
        NSLog(@"Counter Two %i times executed\n", counterTwo);
        
    }
    
    NSLog(@"<<<<<<-------||||||******||||-------->>>>>>");
    
    NSLog(@"Program 6");
    
    int counterThree = 0;
    
    while (counterThree < 10) {
        
        NSLog(@"Good Morning!\n");
        NSLog(@"Good Afternoon!\n");
        NSLog(@"Good Evening!\n");
        
        counterThree = counterThree + 1;
        
        NSLog(@"Counter Three %i times executed\n", counterThree);
        
    }
    
    NSLog(@"<<<<<<-------||||||******||||-------->>>>>>");
    
    NSLog(@"Program 7");
    
    // For Loop
    
    int counterFour = 0;
    
    for (; counterFour < 10; ) {
        
        NSLog(@"Good Morning!\n");
        NSLog(@"Good Afternoon!\n");
        NSLog(@"Good Evening!\n");
        
        counterFour = counterFour + 1;
        
        NSLog(@"Counter Four %i times executed\n", counterFour);
        
    }
    
    NSLog(@"<<<<<<-------||||||******||||-------->>>>>>");
    
    NSLog(@"Program 8");
    
    // Complete For Loop
    
    for (int counterFive = 0; counterFive < 10; counterFive = counterFive + 1) {
        
        NSLog(@"Good Morning!\n");
        NSLog(@"Good Afternoon!\n");
        NSLog(@"Good Evening!\n");
        
        NSLog(@"Counter Five %i times executed\n", counterFive);
        
    }
    
    return 0;
}
