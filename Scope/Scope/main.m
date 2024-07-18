//
//  main.m
//  Scope
//
//  Created by Sheeraz on 7/18/24.
//

#import <Foundation/Foundation.h>

// Program 1

void dayGreeting(int loops) {
    
    for (int i = 0; i < loops; i++) {
        printf("Good morning %d\n", i);
        printf("Good afternoon %d\n", i);
        printf("Good evening %d\n", i);
    }
}

// Program 2

// Scopes are bounded

void dayGreeting2(int loops) {
    
    for (int i = 0; i < loops; i++) {
        printf("Good morning %d\n", i);
        
        /*
        
        printf("Good afternoon %d\n", A2); // Use of undeclared identifier 'A2'
        printf("Good evening %d\n", B2); // Use of undeclared identifier 'B2'
    
       */
         }
}


// Program 3

void dayGreeting3(int loops) {
    
    for (int i = 0; i < loops; i++) {
        printf("Good morning %d\n", i);
        printf("Good afternoon %d\n", i);
        printf("Good evening %d\n", i);
    }
}

// Program 4

// Scops define namespaces

void dayGreeting4(int loops) {
    
    int A = 7;
    int B = 8;
    
    for (int i = 0; i < loops; i++) {
        printf("Good morning %d\n", i);
        printf("Good afternoon %d\n", A);
        printf("Good evening %d\n", B);
    }
}

// Program 5

// Scops can be nested

void dayGreeting5(int loops) {
    
    int A = 7;
    
    for (int i = 0; i < loops; i++) {
        
        int B = 8;
        
        printf("Good morning %d\n", i);
        printf("Good afternoon %d\n", A);
        printf("Good evening %d\n", B);
    }
}

// Program 6

// Scops can be nested

void dayGreeting6(int loops) {
    
    int A = 7;
    
    for (int i = 0; i < loops; i++) {
        
        int B = 8;
        
        printf("Good morning %d\n", i);
        printf("Good afternoon %d\n", A);
        printf("Good evening %d\n", B);
    }
    
    // here we see an example with nested is broken
    
    printf("Day is done %d\n", A);
    // printf("Day is done %d\n", B); // Use of undeclared identifier 'B'
}

// Program 8

// A special scope: global

void dayGreeting7(int loops) {
    
    for (int i = 0; i < loops; i++) {
        printf("Good morning %d\n", i);
        /*
        printf("Good afternoon %d\n", A8); // Use of undeclared identifier 'A8'
        printf("Good evening %d\n", B8); // Use of undeclared identifier 'B8'
        */
    }
}

// Program 9

// A special scope: global

int A9 = 5;
int B9 = 3;

void dayGreeting8(int loops) {
    
    for (int i = 0; i < loops; i++) {
        printf("Good morning %d\n", i);
        printf("Good afternoon %d\n", A9);
        printf("Good evening %d\n", B9);
        
    }
}

// Program 10

// this is dangerous

// overriding a global variable

int A10 = 5;
int B10 = 3;

void dayGreeting9(int loops) {
    
    for (int i = 0; i < loops; i++) {
        printf("Good morning %d\n", i);
        printf("Good afternoon %d\n", A10);
        printf("Good evening %d\n", B10);
        
    }
}

// Program 11

// Using a variable you don't want

int A12 = 5;
int B12 = 3;

void dayGreeting10(int loops) {
    
    int A12 = 7;
    
    for (int i = 0; i < loops; i++) {
        printf("Good morning %d\n", i);
        printf("Good afternoon %d\n", A12);
        printf("Good evening %d\n", B12);
        
    }
}

int main(int argc, const char * argv[]) {

    
    printf("\n Program 1 \n");
    printf("\n---------------\n");
    
    int A = 5;
    int B = 3;
    
    dayGreeting(A - B);
    
    printf("\n Program 2 \n");
    printf("\n---------------\n");
    
    int A2 = 5;
    int B2 = 3;
    
    dayGreeting2(A2 - B2);
    
    printf("\n Program 3 \n");
    printf("\n---------------\n");
    
    int A3 = 5;
    
    
    
   // dayGreeting2(A3 - B3); // Use of undeclared identifier 'B3'
    
    int B3 = 3;

    printf("\n Program 4 \n");
    printf("\n---------------\n");
    
    int A4 = 5;
    int B4 = 3;
    
    // 8 saal ki bachi ki rape story
    
    dayGreeting4(A4 - B4);

    printf("\n Program 5 \n");
    printf("\n---------------\n");
    
    int A5 = 5;
    int B5 = 3;
    
    dayGreeting5(A5 - B5);

    printf("\n Program 6 \n");
    printf("\n---------------\n");
    
    int A6 = 5;
    int B6 = 3;
    
    dayGreeting6(A6 - B6);
    
    // Program 7
    
    printf("\n Program 7 \n");
    printf("\n---------------\n");
    
    int A7 = 1;
    {
        int B7 = 2;
        {
            int C7 = 3;
            {
                int D7 = 4;
                {
                    int E7 = 5;
                    {
                        printf("Here are our variables %d %d %d %d %d ", A7, B7, C7, D7, E7);
                    }
                    printf("Here are our variables %d %d %d %d %d ", A7, B7, C7, D7, E7);
                }
               // printf("Here are our variables %d %d %d %d %d", A7, B7, C7, D7, E7); // Use of undeclared identifier 'E7'
            }
          //  printf("Here are our variables %d %d %d %d %d", A7, B7, C7, D7, E7); // Use of undeclared identifier 'D7'
        }
       // printf("Here are our variables %d %d %d %d %d", A7, B7, C7, D7, E7); // Use of undeclared identifier 'C7'
    }
   // printf("Here are our variables %d %d %d %d %d", A7, B7, C7, D7, E7); // Use of undeclared identifier 'B7'
    
    // E7 D7 C7 B7
    // 1  2  3  ?
    // This is an error
    
    printf("\n Program 8 \n");
    printf("\n---------------\n");
    
    int A8 = 5;
    int B8 = 3;
    
    dayGreeting7(A8 - B8);
    
    printf("\n Program 9 \n");
    printf("\n---------------\n");
    
    dayGreeting8(A9 - B9);
    
    printf("\n Program 10 \n");
    printf("\n---------------\n");
    
    int A11 = 7;
    int B11 = 6;
    
    
    printf("Program with Original Variables\n");
    
    dayGreeting9(A10 - B10);
    
    printf("Program with Overriding Variables\n");
    
    dayGreeting9(A11 - B11);
    
    printf("\n---------------\n");
    printf("Program Original Variables With Error\n");
    
    int C1 = A10 - A11;
    int C2 = B10 - B11;
    int C5 = C1 - C2;
    int C7 = C1 + C2;
    int C9 = (C1 + C2) - (C5 + C7);
    int C11 = (C1 + C2) + (C5 + C7);
    
    printf("%d\n", C1);
    printf("%d\n", C2);
    printf("%d\n", C5);
    printf("%d\n", C7);
    printf("%d\n", C9);
    printf("%d\n", C11);
    
    printf("\n---------------\n");
    printf("Program Overriding Variables With Error\n");
    
    int C3 = A11 - A10;
    int C4 = B11 - B10;
    int C6 = C3 - C4;
    int C8 = C3 + C4;
    int C10 = (C3 + C4) - (C6 - C8);
    int C12 = (C3 + C4) + (C6 - C8);
    
    printf("%d\n", C3);
    printf("%d\n", C4);
    printf("%d\n", C6);
    printf("%d\n", C8);
    printf("%d\n", C10);
    printf("%d\n", C12);

    printf("\n Program 11 \n");
    printf("\n---------------\n");
    
    dayGreeting10(A12 - B12);
    
    printf("Your any nangi\n");
    printf("your any nacked\n");
    
    return 0;
}
