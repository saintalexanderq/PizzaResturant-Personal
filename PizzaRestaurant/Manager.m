//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Javier Xing on 2017-11-03.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager 

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    if ([toppings containsObject:@"anchovies"] ){
        return NO;
    }
    else{
        return YES;
    }
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    if (pizza != nil){
        NSLog(@"Your pizza has been made!");
        [self.deliveryService deliverPizza:pizza];
    }
}


@end
