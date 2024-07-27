//
//  main.m
//  NSString
//
//  Created by Sheeraz on 7/26/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // Program 1
    
    // Basic Creation
    
    printf("-----------Program 1-------------\n");
    
    NSString *nsStringFirst = @"Hello World!";
    NSString *nsStringSecond = @"The number is 12";
    
    
    // Program 2
    
    // Creation with format strings
    
    printf("\n-----------Program 2-------------\n");
    
    char *charTimeOfDay = "morning";
    long longA = 1343489823;
    
    NSString *nsStringThird = [NSString stringWithFormat:@"Good %s, you have %ld credits left\n", charTimeOfDay, longA];
    
    // Program 3
    
    // This is equivalent to
    
    printf("\n-----------Program 3-------------\n");
    
    char *charTimeOfDay2 = "morning";
    long longA2 = 1343489823;
    
    NSString *nsStringFormat = @"Good %s, you have %ld credits left\n";
    NSString *nsStringFourth = [NSString stringWithFormat:nsStringFormat, charTimeOfDay2, longA2];
    
    // Program 4
    
    // A new format code
    
    printf("\n-----------Program 4-------------\n");
    
    NSNumber *nsNumber = @2;
    
    NSString *nsStringNumberNSString = [nsNumber description];
    
    char *charNumberString = [nsStringNumberNSString UTF8String];
    
    printf("This is the result %s\n", charNumberString);
    
    // Program 5
    
    // A new format code
    
    printf("\n-----------Program 5-------------\n");
    
    NSNumber *nsNumber2 = @2;
    
    NSString *nsStringNumberNSString2 = [NSString stringWithFormat:@"This is the result %@\n", nsNumber2];
    
    char *charNumberString2 = [nsStringNumberNSString2 UTF8String];
    
    printf("%s", charNumberString2);
    
    // Program 6
    
    // A new format code
    
    printf("\n-----------Program 6-------------\n");
    
    NSNumber * nsNumber3 = @2;
    
    NSString *nsStringNumberNSString3 = [NSString stringWithFormat:@"This is the result %@\n", nsNumber3];
    
    char *charNumberString3 = [nsStringNumberNSString3 UTF8String];
    
    printf("%s", charNumberString3);
    
    // Just for fun this is the same
    
    printf("%s", [[NSString stringWithFormat:@"This is the result %@\n", @2] UTF8String]);
    
    
    // NSString Part 2
    
    // Program 7
    
    // NSString Methods
    
    printf("\n-----------Program 7-------------\n");
    
    NSString *nsStringTimeOfDay = @"morning";
    
    NSNumber *nsNumberA = @1343489823;
    
    NSString *nsStringFormat2 = @"Good %@, you have %@ credit left\n";
    
    NSString *nsStringOutput = [NSString stringWithFormat:nsStringFormat2, nsStringTimeOfDay, nsNumberA];
    
    printf("%s", [nsStringOutput UTF8String]);
    
    // Program 8
    
    printf("\n-----------Program 8-------------\n");
    
    NSString *nsStringTimeOfDay2 = @"morning";
    
    NSNumber *nsNumberA2 = @1343489823;
    
    NSString *nsStringFormat3 = @"Good %@, you have %@ credits left";
    
    NSString *nsStringOutput2 = [NSString stringWithFormat:nsStringFormat3, nsStringTimeOfDay2, nsNumberA2];
    
   
    
    printf("%s\n", [nsStringOutput2 UTF8String]);
    
    printf("Length is %lu\n", [nsStringOutput2 length]);
    
    printf("First character is %c\n", [nsStringOutput2 characterAtIndex:0]);
    
    printf("Six character is %c\n", [nsStringOutput2 characterAtIndex:5]);
    
    printf("0 - 6 is %s\n", [[nsStringOutput2 substringWithRange:NSMakeRange(0, 6)] UTF8String]);
    
    if ([nsStringOutput2 hasSuffix:@"left"]) {
        
        printf("It does end with \"left\"\n");
        
    } else {
        
        printf("It doesn't end with \"left\"\n");
    }
    
    return 0;
    
}
