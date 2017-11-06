//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//


#import "Kitchen.h"

@implementation Kitchen


- (Pizza*)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            size = large;
            Pizza * myPizza = [[Pizza alloc]initWithPizzaSize:size topping:toppings];
            if([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]){
                [self.delegate kitchenDidMakePizza:myPizza];
            }
            return myPizza;
        }
        else{
            Pizza * myPizza = [[Pizza alloc]initWithPizzaSize:size topping:toppings];
            if([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]){
                [self.delegate kitchenDidMakePizza:myPizza];
            }
            return myPizza;
        }
    }
    else if(![self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
        NSLog(@"No pizza for you");
        return nil;
    }
    
    else{
        Pizza * myPizza = [[Pizza alloc]initWithPizzaSize:size topping:toppings];
        return myPizza;
        }
    }




- (Pizza*)makeLargePepperoniPizza{
    Pizza * pizza = [Pizza largePepperoni];
    return pizza;
}

//Optional protocol method; if pizza was made


+ (PizzaSize)PizzaSizeFrom:(NSString *)string {
    if ([string isEqualToString:@"small"]) {
        return small;
    }
    else if ([string hasPrefix:@"medium"]){
        return medium;
    }
    else if ([string hasPrefix:@"large"]){
        return large;
    }
    else{
        return large;
    }
    
}
+ (NSString *)sizeStringFromPizzaSize:(PizzaSize)size{
    switch (size) {
        case small:
            return @"small";
            
        case medium:
            return @"medium";
            
        default:
            return @"large";
    }
}

@end
