//
//  main.m
//  NSArray
//
//  Created by Sheeraz on 7/26/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // Program 1
    
    // NSLog is a printf for objects
    
    printf("----------Program 1------------");
    
    NSLog(@"Here is a number I care about %d\n", 2);
    
    // Program 2
    
    // Basic Array Creation
    
    printf("----------Program 2------------");
    
    NSArray *nsArrayDinners = @[@"Spaghetti", @"Tacos", @"Tofuekey",
                                @"Hamburgers", @"Chili", @"Fish"];

    NSArray *nsArrayDesserts = [NSArray arrayWithObjects:@"Apple Pie", @"Bannana Cake", @"Cookies",
                                @"Pixie Sticks", nil];
    
    NSLog(@"First Dinner: %@", nsArrayDinners[0]);
    
    // this is correct every dog has bother of his own currupt puppy
    // jab tak yeh currupt kutiyan marengi nahi every illigal kuti in kutiyon ko strength banayegi
    // NSLog(@"Third Dessert: %@", nsArrayDesserts[3]);
    
    // that's why no break at loops
    
    NSLog(@"First Dessert: %@", nsArrayDesserts[0]);
    
    // Program 3
    
    // Looping through an array
    
    printf("----------Program 3------------");
    
    NSArray *nsArrayDinners2 = @[@"Spaghetti", @"Tacos", @"Tofurkey",
                                 @"Hamburgers", @"Chili", @"Fish"];
    
    NSArray *nsArrayDesserts2 = [NSArray arrayWithObjects:@"Apple Pie", @"Bannana Cake", @"Cookies",
                                 @"Pixie Sticks", nil];
    
    printf("\n----------Fast Enumeration------------\n");
    
    // With fast enumeration
    for (NSString *nsStringItem in nsArrayDinners2) {
        
        NSLog(@"%@", nsStringItem);
        
    }
    
    printf("\n----------With a for loop syntax------------\n");
    
    // With a for loop syntax
    for (int intI = 0; intI < [nsArrayDesserts2 count]; intI++) {
        
        NSLog(@"%d: %@", intI, nsArrayDesserts2[intI]);
    }
    
    // Program 4
    
    // Checking if two arrays are equal
    
    printf("----------Program 4------------");
    
    NSArray *nsArrayDinners3 = @[@"Spaghetti", @"Tacos", @"Tofurkey",
                                 @"Hamburgers", @"Chili", @"Fish"];
    
    NSArray *nsArrayDesserts3 = [NSArray arrayWithObjects:@"Apple Pie", @"Bannana Cake", @"Cookies",
                                 @"Pixie Sticks", nil];
    
    // NSLog(@"Third Dessert: %@", nsArrayDesserts[3]);
    
    if ([nsArrayDinners3 isEqualToArray:nsArrayDesserts3]) {
        
        NSLog(@"Dinners And Desserts are equal");
        
    } else {
        
        NSLog(@"Dinners and Desserts are not equal");
    }
    
    // Program 5
    
    // Does an array contain an object?
    
    printf("----------Program 5------------");
    
    NSArray *nsArrayDinners4 = @[@"Spaghetti", @"Tacos", @"Tofurkey",
                                 @"Hamburgers", @"Chili", @"Fish"];
    
    NSArray *nsArrayDesserts4 = [NSArray arrayWithObjects:@"Apple Pie", @"Bannana Cake", @"Cookies",
                                 @"Pixie Sticks", nil];
    
    if ([nsArrayDinners4 containsObject:@"Pixie Sticks"]) {
        
        NSLog(@"Pixie Sticks are Desserts");
    }
    
    NSUInteger *nsUIntegerIndex = [nsArrayDinners4 indexOfObject:@"Tofurkey"];
    
    if (nsUIntegerIndex == NSNotFound) {
        
        NSLog(@"Tofurkey isn't our list of Dinners");
        
    } else {
        
        NSLog(@"Tofurkey is on the dinner menu at index %ld", nsUIntegerIndex);
    }
    
    // Program 6
    
    // Sorting Arrays
    
    printf("----------Program 6------------");
    
    NSArray *nsArrayDinners5 = @[@"Spaghetti", @"Tacos", @"Tofurkey",
                                 @"Hamburgers", @"Chili", @"Fish"];
    
    NSArray *nsArrayDesserts5 = [NSArray arrayWithObjects:@"Apple Pie", @"Bannana Cake", @"Cookies",
                                 @"Pixie Sticks", nil];
    
    
    NSArray *nsArraySortedDinners = [nsArrayDinners5 sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSArray *nsArraySortedDesserts = [nsArrayDesserts5 sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    printf("\n----------Sorted Dinners------------\n");
    
    for (NSString *nsStringX in nsArraySortedDinners) {
        
        NSLog(@"%@\n", nsStringX);
    }
    
    printf("\n----------Sorted Desserts------------\n");
    
    for (NSString *nsStringX2 in nsArraySortedDesserts) {
        
        NSLog(@"%@\n", nsStringX2);
    }
    
    
    // Program 7
    
    // Merging Arrays
    
    printf("----------Program 7------------");
    
    NSArray *nsArrayDinners6 = @[@"Spaghetti", @"Tacos", @"Tofurkey",
                                 @"Hamburgers", @"Chili", @"Fish"];
    
    NSArray *nsArrayDesserts6 = [NSArray arrayWithObjects:@"Apple Pie", @"Bannana Cake", @"Cookies",
                                 @"Pixie sticks", nil];
    
    
    NSArray *nsArrayAllFood = [nsArrayDinners6 arrayByAddingObjectsFromArray:nsArrayDesserts6];
    NSArray *nsArraySortedAllFood = [nsArrayAllFood sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    printf("\n----------Sorted All Food------------\n");
    
    for (NSString *nsStringX3 in nsArraySortedAllFood) {
        
        NSLog(@"%@\n", nsStringX3);
    }
    
    
    return 0;
}
