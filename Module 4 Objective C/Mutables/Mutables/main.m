//
//  main.m
//  Mutables
//
//  Created by Sheeraz on 7/27/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // Program 1
    
    // NSMuatbleString
    
    printf("------------Program 1--------------\n");
    
    NSString *nsStringA = @"First Example";
    NSString *nsStringB = @"Second Example";
    NSString *nsStringC = @"Third Example";
    
    NSString *nsStringImmutable;
    
    nsStringImmutable = nsStringA;
    nsStringImmutable = nsStringB;
    nsStringImmutable = nsStringC;
    
    NSMutableString *nsMutableString = [[NSMutableString alloc] init];
    
    [nsMutableString setString:nsStringA];
    [nsMutableString setString:nsStringB];
    [nsMutableString setString:nsStringC];
    
    
    // Program 2
    
    // NSMutableString
    
    printf("------------Program 2--------------\n");
    
    NSMutableString *nsMutableStringCompany = [NSMutableString stringWithCapacity:20];
    
    NSString *nsStringProduct = @"MacBook Pro";
    
    [nsMutableStringCompany setString:@"Apple"];
    
    [nsMutableStringCompany appendString:@" "];
    
    [nsMutableStringCompany appendString: nsStringProduct];
    
    NSLog(@"%@", nsMutableStringCompany);
    
    
    [nsMutableStringCompany setString: @"Apple"];
    
    [nsMutableStringCompany appendFormat:@" %@ inch %@", @17, nsStringProduct];
    
    NSLog(@"%@", nsMutableStringCompany);
    
    
    [nsMutableStringCompany setString:@"Apple MacBook Pro"];
    
    [nsMutableStringCompany insertString:@"15 inch " atIndex:6];
    
    NSLog(@"%@", nsMutableStringCompany);
    
    
    // Program 3
    
    // NSMutableString
    
    printf("------------Program 3--------------\n");
    
    NSMutableString *nsMutableStringProduct = [NSMutableString stringWithCapacity:20];
    
    // [nsMutableStringProduct setString:@"Apple MaxBook Pro"]; this is right
    
    [nsMutableStringProduct setString:@"Apple MacBook Pro"];
    
    NSLog(@"%@", nsMutableStringProduct);
    
    [nsMutableStringProduct replaceCharactersInRange:NSMakeRange(6, 7) withString:@"iPad"];
    
    NSLog(@"%@", nsMutableStringProduct);
    
    [nsMutableStringProduct deleteCharactersInRange:NSMakeRange(10, 4)];
    
    NSLog(@"%@", nsMutableStringProduct);
    
    
    // Program 4
    
    printf("------------Program 4--------------\n");
    
    NSSet *nsSetKidsEatTheseDesserts = [NSSet setWithObjects:@"Cookies", @"Apple Pie", @"Bannana Cake",
                                        @"Cookies", @"Pixie Sticks", nil];
    
    NSSet *nsSetGrandmaMakesTheseDesserts = [NSSet setWithObjects:@"Apple Pie", @"Bannana Cake", @"Jello", nil];
    
    NSSet *nsSetDadMakesTheseDesserts = [NSSet setWithObjects:@"Jello", @"Toast", nil];
    
    
    NSMutableSet *nsMutableSetPossibleDesserts = [NSMutableSet setWithCapacity:1];
    
    [nsMutableSetPossibleDesserts setSet:nsSetGrandmaMakesTheseDesserts];
    
    [nsMutableSetPossibleDesserts unionSet:nsSetDadMakesTheseDesserts];
    
    NSLog(@"\nHere is what can be made for dessert: %@", nsMutableSetPossibleDesserts);
    
    
    
    [nsMutableSetPossibleDesserts intersectSet:nsSetKidsEatTheseDesserts];
    
    NSLog(@"\nOf all the possible desserts, this is what's kids will eat: %@", nsMutableSetPossibleDesserts);
    
    
    
    [nsMutableSetPossibleDesserts setSet:nsSetGrandmaMakesTheseDesserts];
    
    [nsMutableSetPossibleDesserts unionSet:nsSetDadMakesTheseDesserts];
    
    [nsMutableSetPossibleDesserts minusSet:nsSetKidsEatTheseDesserts];
    
    NSLog(@"\nThe kids won't eat these: %@", nsMutableSetPossibleDesserts);
    
    
    
    // Program 5
    
    // NSMutableArray
    
    printf("------------Program 5--------------\n");
    
    NSMutableArray *nsMutableArrayKidsAteTheseDesserts = [NSMutableArray arrayWithObjects:@"Cookies", @"Apple Pie", @"Bannana Cake",
                                                          @"Cookies", @"Pixie Sticks", @"Cookies", nil];
    
    
    
    NSMutableArray *nsMutableArrayDadMadeTheseDesserts = [NSMutableArray arrayWithObjects:@"Jello", @"Toast", nil];
    
    [nsMutableArrayKidsAteTheseDesserts addObject:@"Toast"];
    
    NSLog(@"\nHere's what the kids ate: %@", nsMutableArrayKidsAteTheseDesserts);
    
    [nsMutableArrayKidsAteTheseDesserts removeLastObject];
    
    NSLog(@"\nHere's what the kids ate: %@", nsMutableArrayKidsAteTheseDesserts);
    
    [nsMutableArrayDadMadeTheseDesserts insertObject:@"Pixie Sticks" atIndex:1];
    
    NSLog(@"\nHere's what the dad made: %@", nsMutableArrayDadMadeTheseDesserts);
    
    [nsMutableArrayDadMadeTheseDesserts removeObjectAtIndex:0];
    
    NSLog(@"\nHere's what the dad made: %@", nsMutableArrayDadMadeTheseDesserts);
    
    [nsMutableArrayDadMadeTheseDesserts replaceObjectAtIndex:1 withObject:@"Toast Flavored Cookies"];
    
    NSLog(@"\nHere's what the dad made: %@", nsMutableArrayDadMadeTheseDesserts);
    
    [nsMutableArrayDadMadeTheseDesserts removeObject:@"Pixie Sticks"];
    
    NSLog(@"\nHere's what the dad made: %@", nsMutableArrayDadMadeTheseDesserts);
    
    
    
    
    
    // Program 6
    
    // NSMutableDictionary
    
    printf("------------Program 6--------------\n");
    
    NSMutableDictionary *nsMutableDictionaryDinnerRequests = [NSMutableDictionary dictionaryWithDictionary:@{
                                                                @"Don": @"Tofurkey",
                                                                @"Sandy": @"Burrito",
                                                                @"Julius": @"Chicken",
                                                                @"Theo": @"Hamburger",
                                                                @"Coconut": @"Kibble",
                                                                }];
    
    
    
    [nsMutableDictionaryDinnerRequests setObject:@"Pixie Sticks" forKey:@"Martha"];
    
    [nsMutableDictionaryDinnerRequests removeObjectForKey:@"Coconut"];
    
    nsMutableDictionaryDinnerRequests[@"Joy"] = @"Burrito";
    
    NSLog(@"\n%@", nsMutableDictionaryDinnerRequests);
    
    
    
    // Program 7
    
    // NSMutableDictionary
    
    printf("------------Program 7--------------\n");
    
    NSMutableDictionary *nsMutableDictionaryDinnerRequests2 = [NSMutableDictionary dictionaryWithDictionary:@{
                                                                @"Don": @"Tofurkey",
                                                                @"Sandy": @"Burrito",
                                                                @"Julius": @"Chicken",
                                                                @"Theo": @"Hamburger",
                                                                @"Coconut": @"Kibble"
                                                                }];
    
    
    NSMutableDictionary *nsMutableDictionaryMoreRequests = [NSMutableDictionary dictionaryWithDictionary:@{
                                                            @"Joy": @"Burrito",
                                                            @"Dusty": @"Millet"
                                                        }];
    
    
    
    
    [nsMutableDictionaryDinnerRequests2 addEntriesFromDictionary:nsMutableDictionaryMoreRequests];
    
    NSLog(@"\n%@", nsMutableDictionaryDinnerRequests2);
    
    
    // Program 8
    
    // Using Mutable Or Immutable?
    
    printf("------------Program 8--------------\n");
    
    
    NSString *nsStringNumbers = @"";
    
    for (int i = 0; i < 50000; i++) {
        
        nsStringNumbers = [nsStringNumbers stringByAppendingFormat:@"%d", i];
        
    }
    
    // NSLog(@"%@\n", nsStringNumbers);
    
    
    // Program 9
    
    // Using Mutable Or Immutable?
    
    
    printf("------------Program 9--------------\n");
    
    
    
    NSMutableString *nsMutableStringNumbers = [NSMutableString stringWithCapacity:1];
    
    for (int i = 0; i < 50000; i++) {
        
        [nsMutableStringNumbers appendFormat:@"%d", i];
    }
    
    // NSLog(@"%@\n", nsMutableStringNumbers);
    
    
    // Program 10
    
    // Don't change a Mutable while enumerating over it!
    
    printf("------------Program 10--------------\n");
    
    
    NSMutableArray *nsMutableArrayDinnerGuests = [NSMutableArray arrayWithObjects:
                                                  @"Don",
                                                  @"Sandy",
                                                  @"Julius",
                                                  @"Theo",
                                                  @"Coconut",
                                                  @"Joy",
                                                  @"Dusty",
                                                  nil];
    
    // Because Sandy is mother but want to become father
    
    /**
    
    for (id idItem in nsMutableArrayDinnerGuests) {
        
        if ([idItem isEqualToString:@"Sandy"]) {
            
            [nsMutableArrayDinnerGuests removeObject:idItem];
        }
    }
    
    **/
    
    
    // Program 11
    
    // Don't change a Mutable while enumerating over it!
    
    printf("------------Program 11--------------\n");
    
    
    NSMutableArray *nsMutableArrayDinnerGuests2 = [NSMutableArray arrayWithObjects:
                                                  @"Don",
                                                  @"Sandy",
                                                  @"Julius",
                                                  @"Theo",
                                                  @"Coconut",
                                                  @"Joy",
                                                  @"Dusty",
                                                  nil];
    
    
    NSArray *nsArrayGuests = [NSArray arrayWithArray:nsMutableArrayDinnerGuests2];
    
    for (id idItemNSArrayGuests in nsArrayGuests) {
        
        if ([idItemNSArrayGuests isEqualToString: @"Sandy"]) {
            
            [nsMutableArrayDinnerGuests2 removeObject: idItemNSArrayGuests];
        }
    }
    
    // NSLog(@"%@", nsMutableArrayDinnerGuests2);
    
    return 0;
}
