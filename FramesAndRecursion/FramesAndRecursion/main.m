//
//  main.m
//  FramesAndRecursion
//
//  Created by Sheeraz on 7/18/24.
//

#import <Foundation/Foundation.h>

// Program 1

void goodDay(char *timeOfDay) {
    
    printf("Good %s \n", timeOfDay);
}

void allDay(void) {
    goodDay("Good morning");
    goodDay("Good afternoon");
    goodDay("Good evening");
}

void dayGreeting(int loops) {
    
    for (int i = 0; i < loops; i++) {
        
        allDay();
        
        // we could use i here
    }
}

// Recursion

// Program 2

void goodDay2(char *timeOfDay) {
    
    printf("Good %s \n", timeOfDay);
}

void allDay2(void) {
    
    allDay2();
    
    // goodDay2("Good morning");
    // goodDay2("Good afternoon");
    // goodDay2("Good evening");
}

void dayGreeting2(int loops) {
    
    for (int i = 0; i < loops; i++) {
        
      //  allDay2();
        
        // we could use i here
    }
}

// Recursion

// Program 3

int timesTwoQuickly(int number) {
    return 2 * number;
}

int timesTwoWithRecursion(int number) {
    
    if (number == 0) {
        return 0;
        
    } else {
        return 2 + timesTwoWithRecursion(number - 1);
    }
}


int main(int argc, const char * argv[]) {

    printf("Program 1");
    printf("\n-----------------\n");
    
    dayGreeting(2);

    printf("Program 2");
    printf("\n-----------------\n");
    
    dayGreeting2(2);

    printf("Program 3");
    printf("\n-----------------\n");
    
    int A = timesTwoQuickly(3);
    printf("timesTwoQuickly %d\n", A);
    
    int B = timesTwoWithRecursion(3);
    printf("timesTwoWithRecursion %d\n", B);
    
    return 0;
}
