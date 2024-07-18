//
//  main.m
//  Functions
//
//  Created by Sheeraz on 7/18/24.
//

#import <Foundation/Foundation.h>

// Program 1

void dayGreeting(int loops) {
    for (int i = 0; i < loops; i++) {
        printf("Good Morning\n");
        printf("Good Afternoon\n");
        printf("Good Evening\n");
    }
}

// Program 2

void goodDay(char *timeOfDay) {
    printf("Good %s\n", timeOfDay);
}

void dayGreeting2(int loops) {
    for (int i = 0; i < loops; i++) {
        goodDay("morning");
        goodDay("afternoon");
        goodDay("evening");
    }
}


// Program 3

void goodDay2(char *timeOfDay) {
    printf("Good %s\n", timeOfDay);
}

void allDay(void) {
    goodDay2("morning");
    goodDay2("afternoon");
    goodDay2("evening");
}

void dayGreeting3(int loops) {
    for (int i = 0; i < loops; i++) {
        allDay();
    }
}


int main(int argc, const char * argv[]) {

    printf("Program 1\n");
    
    dayGreeting(2);
    
    printf("\n------------------\n");
    
    printf("Program 2\n");
    
    
    dayGreeting2(2);

    printf("\n------------------\n");
    
    printf("Program 3\n");
    
    dayGreeting3(2);
    
    return 0;
}
