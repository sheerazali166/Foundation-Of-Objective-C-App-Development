//
//  main.m
//  CallbacksAndBlocks
//
//  Created by Sheeraz on 7/27/24.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    
    
    // Program 1
    
    // Defining a block
    
    // This is a block that has no parameters
    
    printf("------------Program 1--------------\n");
 
    ^{
        NSLog(@"I am the most boring block ever");
    };
    
    
    // Program 2
    
    // This is a block that has two parameters
    
    
    printf("------------Program 2--------------\n");
    
    
    ^(id idParameterOne, id idParameterTwo) {
        
        NSLog(@"%@, %@", idParameterOne, idParameterTwo);
    };
    
    
    // Program 3
    
    // What do you do with a block?
    
    printf("------------Program 3--------------\n");
    
    
    NSMutableDictionary *nsMutableDictionaryDinnerRequests = [NSMutableDictionary dictionaryWithDictionary:@{
                                                                @"Don": @"Tofurkey",
                                                                @"Sandy": @"Burrito",
                                                                @"Julius": @"Chicken",
                                                                @"Theo": @"Hamburger",
                                                                @"Joy": @"Burrito",
                                                                @"Martha": @"Pixie Sticks",
                                                                @"Coconut": @"Kibble",
                                                                @"Dusty": @"Millet"
                                                                }];
    
    
    [nsMutableDictionaryDinnerRequests enumerateKeysAndObjectsUsingBlock:
     ^(id idKey, id idValue, BOOL *boolStop){
        
        NSLog(@"Key: %@ Value: %@\n", idKey, idValue);
        
    }];
    
    
    // Program 4
    
    // What do you do with a block?
    
    
    printf("------------Program 4--------------\n");
    
    
    NSArray *nsArrayFamily = @[@"Don", @"Sandy", @"Julius", @"Theo", @"Joy",
                               @"Martha", @"Coconut", @"Dusty"];
    
    
    [nsArrayFamily enumerateObjectsUsingBlock:
     ^(id idObject, NSUInteger nsUIntegerIndex, BOOL *boolStop){
        
        if ([idObject isEqualToString:@"Julius"]) {
            
            *boolStop = true;
            
        } else {
            
            NSLog(@"%@\n", idObject);
        }
        
    }];
    
    
    // Program 5
    
    // Block type signatures
    
    
    printf("------------Program 5--------------\n");
    
    
    int intName;
    
    void (^voidBlockName) (id, id);
    
    
    // Program 6
    
    // Block type signatures
    
    
    printf("------------Program 6--------------\n");
    
    
    // declaration
    
    int intName2;
    
    void (^voidBlockNameTwo) (id, id);
    
    
    // assignment
    
    int intName3 = 5;
    
    void(^voidBlockNameThree) (id, id) = ^(id idParameterOne, id idParameterTwo) {
      
        // do something
    };
    
    
    // Program 7
    
    // Block example revisited
    
    
    printf("------------Program 7--------------\n");
    
    
    NSArray *nsArrayFamily2 = @[@"Don", @"Sandy", @"Julius", @"Theo", @"Joy",
                               @"Martha", @"Coconut", @"Dusty"];
    
    
    void (^voidMYBlock) (id, NSUInteger, BOOL *);
    
    
    voidMYBlock = ^(id idObject, NSUInteger nsUIntegerIndex, BOOL *boolStop) {
        
        if ([idObject isEqualToString:@"Julius"]) {
            
            *boolStop = YES;
            
        } else {
            
            NSLog(@"%@\n", idObject);
        }
    };
    
    [nsArrayFamily2 enumerateObjectsUsingBlock:voidMYBlock];
    
    
    // Program 8
    
    // Doing the same thing with an anonymous block
    
    
    printf("------------Program 8--------------\n");
    
    
    NSArray *nsArrayFamily3 = @[@"Don", @"Sandy", @"Julius", @"Theo", @"Joy",
                                @"Martha", @"Coconut", @"Dusty"];
    
    [nsArrayFamily3 enumerateObjectsUsingBlock: ^(id idObject, NSUInteger nsUItegerIndex, BOOL *boolStop) {
        
        if ([idObject isEqualToString:@"Julius"]) {
            
            *boolStop = YES;
            
        } else {
            
            NSLog(@"%@\n", idObject);
        }
    }];
    
    
    // Program 9
    
    // Calling a block
    
    
    printf("------------Program 9--------------\n");
    
    
    NSMutableString *(^nsMutableStringMyBlock) (NSInteger, NSString *);
    
    nsMutableStringMyBlock = ^(NSInteger nsIntegerCount, NSString *nsStringRepeatMe) {
    
        NSMutableString *nsMutableStringLocal = [NSMutableString stringWithString:@"\n"];
        
        for (int i = 0; i < nsIntegerCount; i++) {
            
            [nsMutableStringLocal appendString: nsStringRepeatMe];
        }
        
        return nsMutableStringLocal;
    };
    
    NSMutableString *nsMutableStringAnswer = nsMutableStringMyBlock(3, @"Three is a magic number\n");
    
    NSLog(@"%@", nsMutableStringAnswer);
    
    
    // Program 10
    
    // Using an external variable in a block
    
    
    printf("------------Program 10--------------\n");
    
    
    NSArray *nsArrayFamily4 = @[@"Don", @"Sandy", @"Julius", @"Theo", @"Joy",
                                @"Martha", @"Coconut", @"Dusty"];
    
    NSMutableArray *nsMutableArrayCollector = [NSMutableArray arrayWithCapacity:1];
    
    void (^voidMyBlock2) (id, NSUInteger, BOOL *);
    
    voidMyBlock2 = ^(id idObject, NSUInteger nsUIntegerIndex, BOOL *boolStop) {
      
        if ([[idObject description] containsString:@"D"]) {
            
            [nsMutableArrayCollector addObject:idObject];
        }
    };
    
    [nsArrayFamily4 enumerateObjectsUsingBlock:voidMyBlock2];
    
    NSLog(@"%@", nsMutableArrayCollector);
    
    
    // Program 11
    
    // Avoiding circles in blocks
    
    
    
    
    printf("------------Program 11--------------\n");
    
    /*
    
    void (^voidMyBlock3)() = ^{
      
        NSLog(@"This is my data %@\n", self.req);
    };
    
    */
    
    // Use of undeclared identifier 'self'
    
    
    
    // Program 12
    
    // Avoiding circles in blocks
    
    
    printf("------------Program 12--------------\n");
    
    /*
    
    __weak id idWeakSelf = self;
    
    void (^voidMyBlock4)() = ^{
        
        id idStrongSelf = idWeakSelf;
        
        if (!idStrongSelf) return;
        
        NSLog(@"This is my data %@\n", idStrongSelf);
    };
    
    */
    
    // Use of undeclared identifier 'self'
    

    // Program 13
    
    // Avoiding circles in blocks
    
    
    printf("------------Program 13--------------\n");
    
    __weak id idWeakSelf = voidMyBlock2;
    
    void (^voidMyBlock5)() = ^{
        
        id idStrongSelf = idWeakSelf;
        
        if (!idStrongSelf) return;
        
        NSLog(@"This is my data %@\n", idStrongSelf);
    };
    
    // voidMyBlock5();
    
    return 0;
}
