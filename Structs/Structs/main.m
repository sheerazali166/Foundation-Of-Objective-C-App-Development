//
//  main.m
//  Structs
//
//  Created by Sheeraz on 7/18/24.
//

#import <Foundation/Foundation.h>

// Program 1

void timeGreeting(int month, int day, int year, int hour, int minutes, int seconds) {
    printf("The day is %d %d %d, the time is %d:%d:%d\n", month, day, year, hour, minutes, seconds);
}

// Program 2

struct time {
    
    int day;
    int month;
    int year;
    int hour;
    int minutes;
    int seconds;
    
};


void timeGreeting2(struct time myTimeCopy) {
    printf("The day is %d %d %d, the time is %02d:%02d:%02d\n", myTimeCopy.month, myTimeCopy.day, myTimeCopy.year,
           myTimeCopy.hour, myTimeCopy.minutes, myTimeCopy.seconds);
}

// Program 3

struct biography {
    
    struct time birth;
    struct time graduation;
    struct time marriage;
    struct time death;
    
};

// Program 4

typedef struct {
    
    int month;
    int day;
    int year;
    int hour;
    int minutes;
    int seconds;
    
} AnotherTime;

struct biography2 {
    
    AnotherTime birth;
    AnotherTime graduate;
    AnotherTime marriage;
    AnotherTime death;
    
};

int main(int argc, const char * argv[]) {

    printf("Program 1");
    printf("\n-----------------\n");
    
    int month = 6;
    int day = 29;
    int year = 2007;
    int hour = 16;
    int minutes = 30;
    int seconds = 00;
    
    timeGreeting(month, day, year, hour, minutes, seconds);

    printf("Program 2");
    printf("\n-----------------\n");
    
    struct time myTime;
    
    myTime.month = 6;
    myTime.day = 29;
    myTime.year = 2007;
    myTime.hour = 16;
    myTime.minutes = 30;
    myTime.seconds = 00;
    
    timeGreeting2(myTime);

    printf("Program 3");
    printf("\n-----------------\n");
    
    struct biography myBiography;
    myBiography.birth.year = 1973;
    
    printf("Birth year is: %d\n", myBiography.birth.year);

    printf("Program 4");
    printf("\n-----------------\n");
    
    AnotherTime myAnotherTime;
    
    myAnotherTime.year = 2003;
    
    printf("Birth year is: %d\n", myAnotherTime.year);
    
    return 0;
}
