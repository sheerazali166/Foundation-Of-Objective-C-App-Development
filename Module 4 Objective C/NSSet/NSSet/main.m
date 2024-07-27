//
//  main.m
//  NSSet
//
//  Created by Sheeraz on 7/26/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // Program 1
    
    // Creating NSSets
    
    printf("------------Program 1--------------\n");
    
    
    NSSet *nsSetDinners = [NSSet setWithObjects:@"Fish", @"Spaghetti", @"Tacos",
                           @"Tofurkey", @"Hamburgers", @"Chili", @"Fish", nil];
    
    NSSet *nsSetDesserts = [NSSet setWithObjects:@"Cookies", @"Apple Pie", @"Bannana Cake", @"Cookies", @"Pixie Sticks", nil];
    
    NSSet *nsSetAllFood = [NSSet setWithObjects:nsSetDinners, nsSetDesserts, @"Toast", nil];
    
    // No convenient notation
    
    printf("\n------------No convenient notation-------------\n");
    
    NSLog(@"Dinners\n");
    
    for (NSString *nsStringX in nsSetDinners) {
        
        NSLog(@"%@\n", nsStringX);
    }
    
    // NSSets don't have to have NSStrings
    
    printf("\n------------NSSets don't have to have NSStrings-------------\n");
    
    NSLog(@"Desserts");
    
    for (NSString *nsStringX2 in nsSetDesserts) {
        
        NSLog(@"%@\n", nsStringX2);
    }
    
    
    // Program 2
    
    // Creating NSSets from NSArrays
    
    printf("\n------------Program 2--------------\n");
    
    NSArray *nsArrayDinners = [NSArray arrayWithObjects:@"Fish", @"Spaghetti", @"Tacos",
                               @"Tofurkey", @"Hamburgers", @"Chili", @"Fish",nil];
    
    NSSet *nsSetDinnersSet = [NSSet setWithArray:nsArrayDinners];
    
    NSLog(@"--------------Dinners (Array)--------------\n");
    
    for (NSString *nsStringX3 in nsArrayDinners) {
        
        NSLog(@"%@\n", nsStringX3);
        
    }
    
    NSLog(@"--------------DinnersSet (Sets)--------------\n");
    
    for (NSString *nsStringX4 in nsSetDinnersSet) {
        
        NSLog(@"%@\n", nsStringX4);
    }
    
    // Program 3
    
    // The abstract object pointer, id
    
    printf("\n------------Program 3--------------\n");
    
    NSSet *nsSetDinners2 = [NSSet setWithObjects:@"Fish", @"Spaghetti", @"Tacos", @"Tofurkey",
                           @"Hamburgers", @"Chili", @"Fish", nil];
    
    NSSet *nsSetDesserts2 = [NSSet setWithObjects:@"Cookies", @"Apple Pie", @"Bannana Cake",
                            @"Cookies", @"Pixie Sticks", nil];
    
    NSNumber *nsNumberExample = @3.14;
    
    NSSet *nsSetAllFood2 = [NSSet setWithObjects:nsSetDinners2, nsSetDesserts2, @"Toast", nil];
    
    NSLog(@"--------------Dinners--------------\n");
    
    for (NSString *nsStringX5 in nsSetDinners2) {
        
        NSLog(@"%@\n", nsStringX5);
        
    }
    
    
    NSLog(@"--------------All Food--------------\n");
    
    for (id idX in nsSetAllFood2) {
        
        NSLog(@"%@\n", idX);
    }
    
    // Program 4
    
    printf("\n------------Program 4--------------\n");
    
    NSSet *nsSetDinners3 = [NSSet setWithObjects:@"Fish", @"Spaghetti", @"Tacos", @"Tofurkey",
                            @"Hamburgers", @"Chili", @"Fish", nil];
    
    NSSet *nsSetDesserts3 = [NSSet setWithObjects:@"Cookies", @"Apple Pie", @"Bannana Cake",
                             @"Cookies", @"Pixie Sticks", nil];
    
    NSNumber *nsNumberExample2 = @3.14;
    
    NSSet *nsSetAllFood3 = [NSSet setWithObjects:nsSetDinners3, nsSetDesserts3, @"Toast", nsNumberExample2, nil];
    
    NSLog(@"\n------------Dinners------------\n");
    
    for (NSString *nsStringX6 in nsSetDinners3) {
        
        NSLog(@"%@\n", nsStringX6);
    }
    
    NSLog(@"\n------------All Food------------\n");
    
    for (id idX2 in nsSetAllFood3) {
        
        NSLog(@"%@\n", idX2);
    }
    
    printf("\n------------Program 5--------------\n");
    
    for (int i = 0; i < [nsSetAllFood3 count]; i++) {
        
        NSLog(@"%@\n", [[nsSetAllFood3 allObjects] objectAtIndex:i]);
    }
    
    // Program 6
    
    // Figuring out set overlaps
    
    printf("\n------------Program 6--------------\n");
    
    NSSet *nsSetKidsEatTheseDesserts = [NSSet setWithObjects:@"Cookies", @"Apple Pie", @"Bannana Cake", @"Cookies",
                                        @"Pixie Sticks", nil];
    
    NSSet *nsSetGrandmaMakesTheseDesserts = [NSSet setWithObjects:@"Apple Pie", @"Bannana Cake", @"Jello", nil];
    
    NSSet *nsSetDadMakesTheseDesserts = [NSSet setWithObjects:@"Jello", nil];
    
    if ([nsSetDadMakesTheseDesserts isEqualToSet:nsSetGrandmaMakesTheseDesserts]) {
        
        NSLog(@"Dad and Grandma make the exactly the same desserts");
        
    } else {
        
        NSLog(@"Dad and Grandma don't make the exactly the same desserts");
        
    }
    
    if ([nsSetKidsEatTheseDesserts intersectsSet:nsSetDadMakesTheseDesserts]) {
        
        NSLog(@"The kids eat a dessert that dad makes");
        
    } else {
        
        NSLog(@"The kids don't eat a dessert that Dad makes");
    }
    
    if ([nsSetDadMakesTheseDesserts isSubsetOfSet:nsSetGrandmaMakesTheseDesserts]) {
        
        NSLog(@"Grandma makes all the desserts that Dad makes");
        
    } else {
        
        NSLog(@"Grandma doesn't make all the desserts that Dad makes");
        
    }
    
    // Program 7
    
    // Checking what's in an NSSet
    
    printf("\n------------Program 7--------------\n");
    
    NSSet *nsSetKidsEatTheseDesserts2 = [NSSet setWithObjects:@"Cookies", @"Apple Pie", @"Bannana Cake", @"Cookies", @"Pixie Sticks", nil];
    
    if ([nsSetKidsEatTheseDesserts2 containsObject:@"Cookies"]) {
        
        NSLog(@"The kids eat cookies!");
    }
    
    if ([nsSetKidsEatTheseDesserts2 containsObject:@"Jello"]) {
        
        NSLog(@"The kids eat Jello!");
    }
    
    
    // Program 8
    
    // Combining NSSets
    
    printf("\n------------Program 8--------------\n");
    
    NSSet *nsSetKidsEatTheseDesserts3 = [NSSet setWithObjects:@"Cookies", @"Apple Pie", @"Bannana Cake",
                                         @"Cookies", @"Pixie Sticks", nil];
    
    NSSet *nsSetGrandmaMakesTheseDesserts2 = [NSSet setWithObjects:@"Apple Pie", @"Bannana Cake", @"Jello", nil];
    
    NSSet *nsSetDadMakesTheseDesserts2 = [NSSet setWithObjects:@"Jello", nil];
    
    NSSet *nsSetAllTheDessert = [[nsSetKidsEatTheseDesserts3 setByAddingObjectsFromSet:nsSetGrandmaMakesTheseDesserts2]
                                 setByAddingObjectsFromSet:nsSetDadMakesTheseDesserts2];
    
    for (id idItem in nsSetAllTheDessert) {
        
        NSLog(@"%@", idItem);
    }
    

    
    return 0;
}
