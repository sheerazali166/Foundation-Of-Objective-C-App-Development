//
//  main.m
//  NSDictionary
//
//  Created by Sheeraz on 7/27/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // Program 1
    
    // Creating NSDictionary
    
    printf("--------------Program 1---------------");
    
    NSDictionary *nsDictionaryDinnerRequests = @{
                                                @"Don": @"Tofurkey",
                                                @"Sandy": @"Burrito",
                                                @"Julius": @"Chicken",
                                                @"Theo": @"Hamburger",
                                                @"Joy": @"Burrito",
                                                @"Martha": @"Pixie Sticks",
                                                @"Coconut": @"Kibble"
                                                };
    
    NSLog(@"%@", nsDictionaryDinnerRequests);
    
    
    // Program 2
    
    // Creating NSDictionary
    
    printf("--------------Program 2---------------");
    
    NSDictionary *nsDictionaryDinnerRequests2 = [NSDictionary dictionaryWithObjectsAndKeys:
                                                @"Tofurkey", @"Don",
                                                @"Burrito", @"Sandy",
                                                @"Chicken", @"Julius",
                                                @"Hamburger", @"Theo",
                                                @"Burrito", @"Joy",
                                                @"Pixie Sticks", @"Martha",
                                                @"Kibble", @"Coconut", nil];
    
    NSLog(@"%@", nsDictionaryDinnerRequests2);
    
    
    // Program 3
    
    // Creating Dictionary
    
    printf("--------------Program 3---------------");
    
    NSArray *nsArrayPeople = @[@"Don", @"Sandy", @"Julius", @"Theo",
                               @"Joy", @"Martha", @"Coconut"];
    
    NSArray *nsArrayRequest = @[@"Tofurkey", @"Burrito", @"Chicken", @"Hamburger",
                                @"Burrito", @"Pixie Sticks", @"Kibble"];
    
    NSDictionary *nsDictionaryDinnerRequests3 = [NSDictionary dictionaryWithObjects:nsArrayRequest forKeys:nsArrayPeople];
    
    NSLog(@"%@", nsDictionaryDinnerRequests3);
    
    
    // Program 4
    
    // Selecting objects from an NSDictionary
    
    printf("--------------Program 4---------------");
    
    NSDictionary *nsDictionaryDinnerRequests4 = @{
                                                @"Don": @"Tofurkey",
                                                @"Sandy": @"Burrito",
                                                @"Julius": @"Chicken",
                                                @"Theo": @"Hamburger",
                                                @"Joy": @"Burrito",
                                                @"Martha": @"Pixie Sticks",
                                                @"Coconut": @"Kibble",
                                                };
    
    NSLog(@"Theo wants %@ for dinner\n", nsDictionaryDinnerRequests4[@"Theo"]);
    
    NSLog(@"Joy wants %@ for dinner\n", [nsDictionaryDinnerRequests4 objectForKey:@"Joy"]);
    
    NSArray *nsArrayBurritoWanters = [nsDictionaryDinnerRequests4 allKeysForObject:@"Burrito"];
    
    NSLog(@"These are the burrito requests:\n");
    
    for (id idBurritoWanters in nsArrayBurritoWanters) {
        
        NSLog(@"%@\n", idBurritoWanters);
    }
    
    NSLog(@"These are Dog 1 Values: Tofurkey Chicken Hamburger Pixie Sticks Kibble");
    NSLog(@"These are Dog 2 Values: Burrito Burrito");
    
    // Program 5
    
    // Looping through an NSDictionary
    
    printf("--------------Program 5---------------");
    
    NSDictionary *nsDictionaryDinnerRequests5 = @{
                                                @"Don": @"Tofurkey",
                                                @"Sandy": @"Burrito",
                                                @"Julius": @"Chicken",
                                                @"Theo": @"Hamburger",
                                                @"Joy": @"Burrito",
                                                @"Martha": @"Pixie Sticks",
                                                @"Coconut": @"Kibble"
                                                };
    
    
    for (id idKNSDictionaryDinnerRequests5 in nsDictionaryDinnerRequests5) {
        
        NSLog(@"(%@, %@)\n", idKNSDictionaryDinnerRequests5, nsDictionaryDinnerRequests5[idKNSDictionaryDinnerRequests5]);
    }
    
    
    // Program 6
    
    // Looping through an NSDictionary
    
    printf("--------------Program 6---------------");
    
    NSDictionary *nsDictionaryDinnerRequests6 = @{
                                                @"Don": @"Tofurkey",
                                                @"Sandy": @"Burrito",
                                                @"Julius": @"Chicken",
                                                @"Theo": @"Hamburger",
                                                @"Joy": @"Burrito",
                                                @"Martha": @"Pixie Sticks",
                                                @"Coconut": @"Kibble"
                                                };
    
    for (id idVnsDictionaryDinnerRequests6AllValues in [nsDictionaryDinnerRequests6 allValues]) {
        
        NSLog(@"%@ requested by %lu", idVnsDictionaryDinnerRequests6AllValues, [[nsDictionaryDinnerRequests6 allKeysForObject:idVnsDictionaryDinnerRequests6AllValues] count]);
    }
    
    return 0;
}
