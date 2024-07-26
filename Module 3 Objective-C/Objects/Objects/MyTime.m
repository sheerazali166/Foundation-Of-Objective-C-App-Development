//
//  MyTime.m
//  Objects
//
//  Created by Sheeraz on 7/24/24.
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
    allSec = allSec + (self.year - whichYear) * 365 * 24 * 30 * 60 * 60;
    
    return (allSec);
}

- (long)approxSecondsSince1970 {
    return [self approxSecondsSinceWhichYear:1970];
}

@end
