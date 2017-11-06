//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Javier Xing on 2017-11-03.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pizzaHistory = [[NSMutableArray alloc]init];
    }
    return self;
}


-(void)deliverPizza:(Pizza *)pizza{
    [self.pizzaHistory addObject:pizza];
    [self.deliveryCar deliverPizza:pizza];
}
-(void) displayPizzaHistory{

    NSLog(@"The pizza history is %@", self.pizzaHistory);
}

@end
