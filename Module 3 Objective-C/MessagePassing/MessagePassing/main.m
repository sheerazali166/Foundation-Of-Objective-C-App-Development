//
//  main.m
//  MessagePassing
//
//  Created by Sheeraz on 7/25/24.
//

#import <Foundation/Foundation.h>
#import "MyTime.h"


int main(int argc, const char * argv[]) {
    
    // Program 1

    // Message Passing
    
    // Need higher quality video
    
    
    printf("---------- Program 1 ------------\n");
    
    
    MyTime *myTime = [MyTime alloc];
    myTime.hour = 10;
    
    int answer;
    int originalValue;
    
    // when sending the message:
    
    answer = [myTime addSomeParameters:1 secondParameter:2 thirdParameter:3];
    
    printf("The answer is %d\n", answer);
    
      // test at test object it can pass the test?
    
    answer = answer - myTime.hour;
    
    printf("The answer without hour is %d\n", answer);
    
    answer = answer - myTime.hour;
    
    printf("The answer without hour is %d\n", answer);
    
    int answerTwo = answer - myTime.hour;
    
    printf("The answer without hour is %d\n", answerTwo);
    
    int answerThree = answer - myTime.hour;
    
    printf("The answer without hour is %d\n", answerThree);
    
    printf("1947 Lahori pakistani khoti anushka is takli");
    
    
    // Program 2
    
    // Properties
   
    printf("\n---------- Program 2 ------------\n");
    
    
    [myTime setHour:10]; // uses this automatic setter method to set hour to 10
    [myTime setMinutes:20]; // uses this automatic setter method to set minutes to 20
    
    int newHour, newMinutes;
    
    newHour = [myTime hour]; // uses the getter to get the hour from myTime
    newMinutes = [myTime minutes]; // uses the getter to get the minutes from myTime
    
    printf("newHour is: %d\n", newHour);
    printf("newMinutes is: %d\n", newMinutes);
    
    
    // Program 3
    
    // @property Syntactic Sugar
    
    printf("\n---------- Program 3 ------------\n");
    
    MyTime *myTimeTwo = [MyTime alloc];
    
    myTimeTwo.hour = 10; // This code is transformed by the compiler to
    [myTimeTwo setHour: 10]; // this code
    
    myTimeTwo.minutes = 20; // Same here
    [myTimeTwo setMinutes: 20];
    
    int newHourTwo, newMinutesTwo;
    
    newHourTwo = myTimeTwo.hour; // This code is transformed by the compiler to
    newHourTwo = [myTimeTwo hour]; // this code
    
    newMinutesTwo = myTimeTwo.minutes; // Same here
    newMinutesTwo = [myTimeTwo minutes];
    
    printf("newHourTwo is: %d\n", newHourTwo);
    printf("newMinutesTwo is: %d\n", newMinutesTwo);
    
    
    return 0;
}
