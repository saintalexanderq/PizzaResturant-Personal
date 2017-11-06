//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Javier Xing on 2017-11-03.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    if (pizza != nil){
        NSLog(@"Your pizza has been made!");
    }
}

@end
