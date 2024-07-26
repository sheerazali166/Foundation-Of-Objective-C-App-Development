//
//  main.m
//  HeapMemory
//
//  Created by Sheeraz on 7/24/24.
//

#import <Foundation/Foundation.h>

// Program 1

int *A = NULL;

void swapItOut(int c) {
    
    printf("swapItOut: A is now %p and points to %d\n", A, (*A));
    A = (&c);
    printf("swapItOut: A is not %p and points to %d\n", A, (*A));
    
}

void dontSwapItOut(int c) {
   
    printf("dontSwapItOut: c is now %d\n", c);
}

// Program 2

int *A2 = NULL;

void swapItOut2(int c) {
    
    *A2 = (c);
    
    printf("swapItOut2: A2 is now %p and points to %d\n", A2, (*A2));
}

void dontSwapItOut2(int c) {
    
    printf("dontSwapItOut2: c is now %d\n", c);
}

int *A3 = NULL;

int *A4 = NULL;

int main(int argc, const char * argv[]) {
    
    printf("-------- Program 1 ---------\n");
    
    int B = 5;
    A = (&B);
    
    printf("main: A is now %p and points to %d\n", A, (*A));
    swapItOut(10);
    printf("main: A is now %p and points to %d\n", A, (*A));
    dontSwapItOut(20);
    printf("main: A is now %p and points to %d\n", A, (*A));
    
    printf("\n-------- Program 2 ---------\n");
    
    int B2 = 5;
    // printf("main: A2 is now %p and points to %d\n", A2, (*A2));
    A2 = malloc(sizeof(int)); // request memory
    printf("main: A2 is now %p and points to %d\n", A2, (*A2));
    *A2 = B2;
    printf("main: A2 is now %p and points to %d\n", A2, (*A2));
    swapItOut2(10);
    printf("main: A2 is now %p and points to %d\n", A2, (*A2));
    dontSwapItOut2(20);
    printf("main: A2 is now %p and points to %d\n", A2, (*A2));
    free(A2); // return memory
    
    // Program 3
    
    printf("\n-------- Program 3 ---------\n");
    
    // Be Careful!
    
    // if you don't release your memory by "freeing" it you can run out
    
    /**
    
        do {
            
            A3 = malloc(sizeof(int)); // request memory
            
        } while(A3 != NULL);
     
     **/
    
    // Program 4
    
    printf("\n-------- Program 4 ---------\n");
    
    // Be Careful!
    
    // if you don't release your memory by "freeing" it you can run out
    
    do {
        A4 = malloc(sizeof(int)); // request memory
        free(A4);
        
    } while(A4 != NULL);
    
    
    return 0;
    
}
