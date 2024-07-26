//
//  main.m
//  Objects
//
//  Created by Sheeraz on 7/24/24.
//

#import <Foundation/Foundation.h>
#import "MyTime.h"

int main(int argc, const char * argv[]) {

//    printf("First value result is: %d\n", (24 * 60 * 60));
//    printf("Second value result is:%d\n", (30 * 24 * 60 * 60));
  
    // maro is illligal chhakke ko result change karne pe
    // apni marzi se beti chuda kar prove mangne pe begunahi ka
    // you want moon then why sun ??
    
    MyTime *myTimeA = [[MyTime alloc]init];
    
    myTimeA.month = 6;
    myTimeA.day = 29;
    myTimeA.year = 2007;
    myTimeA.hour = 14;
    myTimeA.minutes = 30;
    myTimeA.seconds = 00;
    
    printf("Seconds since 1970 is about %ld\n", [myTimeA approxSecondsSince1970]);
    
    return 0;
}
