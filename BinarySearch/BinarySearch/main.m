//
//  main.m
//  BinarySearch
//
//  Created by Benson Huynh on 2015-10-20.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>



int binarySearch(int target, int min, int max, NSArray *sortedNumber) {
    
    
 int midpoint = (min + max) /2;
    
    NSString *midpointValueString = [sortedNumber objectAtIndex: midpoint];

    int midpointValue = [midpointValueString intValue];
    
    
    if ( target < midpointValue){
      return binarySearch(target, min, midpoint-1, sortedNumber);
        
    }
    
    else if ( target > midpointValue ){
        return binarySearch(target, midpoint+1, max, sortedNumber);
    }
    else if (target == midpointValue) {
        NSLog(@"Found %d!", target);
    
    }
    return -1;
    
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *sortedNumbers = @[@"3", @"4", @"7", @"9", @"11", @"19", @"22", @"27"];
        
        binarySearch(5, 0, 4, sortedNumbers);
        
        
        //binarySearch(int 4) = sortedNumbers;
        
       
        
        
    }
    return 0;
}
