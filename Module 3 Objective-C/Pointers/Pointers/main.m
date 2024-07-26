//
//  main.m
//  Pointers
//
//  Created by Sheeraz on 7/24/24.
//

#import <Foundation/Foundation.h>

// Program 1

// Motivation
// sometimes scopes can be too restrictive


void addFive(int x) {
    
    x = x + 5;
    
}

// Program 2

void addFive2(int *pointerToX) {
    
    (*pointerToX) = (*pointerToX) + 5;
}

int main(int argc, const char * argv[]) {

    printf("------ Program 1 -------");
    printf("\n");
    
    int x = 2;
    printf("at first x is %d\n", x);
    
    addFive(x);
    
    printf("later x is %d\n", x);
    
    printf("\n------ Program 2 -------\n");
    
    int intX2 = 2;
    
    int *intPointerToX = &intX2;
    
    printf("at first x is %d, it's address is %p\n", intX2, intPointerToX);
    
    addFive2(intPointerToX);
    
    printf("later x is %d, it's address is %p\n", intX2, intPointerToX);
    
    // Program 3
    
    printf("\n-------- Program 3 ----------\n");
    
    int intY = 5;
    
    int *intX3 = &intY;
    
    (*intX3) = 6;
    
    printf("y = %d\n", intY);
    
    // Program 4
    
    printf("\n-------- Program 4 ----------\n");
    
    // Special Address
    
    // 1. NUll is a special value
    // 2. it is address "0"
    // 3. You can set pointers to NULL and then use that in conditionals
    
    int intY2 = 5;
    int *intX4 = NULL;
    
    if (intX4 == NULL) {
        
        intX4 = &intY2;
    }
    
    (*intX4) = 6;
    
    printf("y = %d\n", intY2);
    
    // Program 5
    
    // Be Careful!
    
    // 1. Just because you have a pointer doesn't mean it points to something
    //    meaningful!
    // 2. you must assign it
    
    
    
    
    printf("\n-------- Program 5 ----------\n");
    
    int intY3 = 5;
    
    int *intX5;
    
    (*intX5) = 6;
    
    printf("y = %d\n", intY3);
    
    printf("\n-------- Program 6 ----------\n");
    
    // i think we doesn't need default compiler
    
    // Be Careful!
    
    // Don't dereference a NULL pointer!
    
    int intY4 = 5;
    int *intX6;
    
    (intX6) = NULL;
    
    // (*intX6) - 6 = (*intX) - (*intX) = 2 = *?;
    // Thread 1: EXC_BAD_ACCESS (code=1, address=0x0)
     
    //(*intX6) = 6;
    
    printf("y = %d\n", intY4);
    
    
    printf("\n-------- Program 7 ----------\n");
    
    // Program 7
    
    // You have a pointer to any kind of variable
    // Using the star notation is how you define it
    
    int *A;
    float *B;
    char *C;
    int32_t *D;
    struct time *E;
    
    return 0;
}
