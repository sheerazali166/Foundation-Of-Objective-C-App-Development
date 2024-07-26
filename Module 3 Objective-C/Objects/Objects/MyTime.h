//
//  MyTime.h
//  Objects
//
//  Created by Sheeraz on 7/24/24.
//

#ifndef MyTime_h
#define MyTime_h
#endif /* MyTime_h */

@interface MyTime : NSObject

@property (nonatomic) int year;
@property (nonatomic) int month;
@property (nonatomic) int day;
@property (nonatomic) int hour;
@property (nonatomic) int minutes;
@property (nonatomic) int seconds;

- (long)approxSecondsSinceWhichYear:(long)whichYear;
- (long)approxSecondsSince1970;

@end
