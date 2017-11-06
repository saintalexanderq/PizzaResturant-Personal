//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Javier Xing on 2017-11-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Header.h"

@class Kitchen;

@interface Pizza : NSObject

@property (nonatomic, assign, readonly) PizzaSize pizzaSize;
@property (nonatomic, strong, readonly) NSArray* pizzaToppings;

- (instancetype)initWithPizzaSize:(PizzaSize)pizzaSize topping: (NSArray*)pizzaTopping;

+(Pizza *) largePepperoni;

//+(Pizza *) meatLoversWithSize:(PizzaSize)size;


@end
