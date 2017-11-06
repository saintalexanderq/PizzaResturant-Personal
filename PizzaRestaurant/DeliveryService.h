//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Javier Xing on 2017-11-03.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"
#import "DeliveryCar.h"
@class DeliveryCar;

@interface DeliveryService : NSObject
@property (nonatomic, strong) NSMutableArray <Pizza*>* pizzaHistory;
@property (nonatomic, strong) DeliveryCar * deliveryCar;

-(void)deliverPizza:(Pizza *)pizza;
-(void)displayPizzaHistory;

@end
