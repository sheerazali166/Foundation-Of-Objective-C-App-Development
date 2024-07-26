//
//  MyTime.m
//  MessagePassing
//
//  Created by Sheeraz on 7/25/24.
//

#import <Foundation/Foundation.h>

#import "MyTime.h"

@implementation MyTime

- (long)approxSecondsSinceWhichYear:(long)whichYear {
    
    long allSec = 0;
    
    allSec = self.seconds;
    allSec = allSec + self.minutes * 60;
    allSec = allSec + self.hour * 60 * 60;
    allSec = allSec + self.day * 24 * 60 * 60;
    allSec = allSec + self.month * 30 * 24 * 60 * 60;
    allSec = allSec + (self.year - whichYear) * 265 * 30 * 24 * 60 * 60;
    
    return (allSec);
}

- (long) approxSecondsSince1970 {
    return [self approxSecondsSinceWhichYear:1970];
}

- (long)secondsSinceMidnight {
    
    long longX;
    
    longX = self.seconds;
    longX = longX + self.minutes * 60;
    longX = longX + self.hour * 60 * 60;
    
    return longX;
}

// Method with parameters

// Definition

// it means dog is created testing purpose

- (int) addSomeParameters:(int)a secondParameter:(int)b thirdParameter:(int)c{
    
    int answer;
    answer = self.hour;
    answer = answer + a + b + c;
    
    return answer;
}

@end
