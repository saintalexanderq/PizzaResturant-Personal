//
//  Header.h
//  PizzaRestaurant
//
//  Created by Javier Xing on 2017-11-03.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//



@class Pizza;
@class Kitchen;

typedef NS_ENUM(NSUInteger, PizzaSize){
    small,
    medium,
    large,
    invalid
};

@protocol KitchenDelegate <NSObject>

@required
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end



