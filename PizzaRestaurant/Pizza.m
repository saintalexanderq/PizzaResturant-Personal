//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Javier Xing on 2017-11-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithPizzaSize:(PizzaSize)pizzaSize topping: (NSArray*)pizzaTopping
{
    self = [super init];
    if (self) {
        _pizzaSize = pizzaSize;
        _pizzaToppings = pizzaTopping;
    }
    return self;
}

+(Pizza *) largePepperoni{
    NSArray *pepperoniArray = @[@"pepperoni"];
    Pizza * pizza = [[Pizza alloc]initWithPizzaSize:large topping:pepperoniArray];
    return pizza;
}

- (NSString *)description
{
    NSString *size;
    switch (self.pizzaSize) {
        case small:
            size = @"small";
            
        case medium:
            size = @"medium";
            
        default:
            size = @"large";
    }
    NSString * pizzaToppings = [self.pizzaToppings componentsJoinedByString:@", "];

    return [NSString stringWithFormat:@"%@ %@ pizza", size, pizzaToppings];
}




@end
