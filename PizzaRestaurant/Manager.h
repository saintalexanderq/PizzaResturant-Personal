//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Javier Xing on 2017-11-03.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"

@interface Manager : NSObject <KitchenDelegate>

@property (nonatomic, strong) DeliveryService *deliveryService;


@end
