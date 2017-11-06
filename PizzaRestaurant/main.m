//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Manager.h"
#import "CheeryManager.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        Kitchen *kitchen = [Kitchen new];
        Manager *manager;
        Manager *managerWithService = [[Manager alloc]init];
        CheeryManager * cheeryManager;
        DeliveryService *deliveryService = [[DeliveryService alloc]init];
        DeliveryCar * deliveryCar = [[DeliveryCar alloc]init];
        managerWithService.deliveryService = deliveryService;
        deliveryService.deliveryCar = deliveryCar;
        
        while (TRUE) {
            // Loop forever
            NSLog(@"Which manager would you like: \n Manager \n CheeryManager \n None\n");
            
            char managerInput[100];
            fgets (managerInput, 100, stdin);
            
            NSString *managerString = [[NSString alloc] initWithUTF8String:managerInput];
            managerString = [managerString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

            
            if ([[managerString lowercaseString] hasPrefix:@"manager"]){
//                if(manager == nil){
//                    manager = [[Manager alloc]init];
//                }
//                kitchen.delegate = manager;
                kitchen.delegate = managerWithService;
            }
            else if([[managerString lowercaseString] hasPrefix:@"cheerymanager"]){
                if(cheeryManager == nil){
                    cheeryManager = [[CheeryManager alloc]init];
                }
                kitchen.delegate = cheeryManager;
            }
            
            
             NSLog(@"Please pick your pizza size and toppings:");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
//           - (Pizza *)makePizzaWithSize:(pizzaSize)size toppings:(NSArray *)toppings;
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSRange toppingsRange = NSMakeRange(1, ([commandWords count]-1));
     
            NSArray * pizzaToppings = [commandWords subarrayWithRange:toppingsRange];
            
            
            PizzaSize pizzaSize = [Kitchen PizzaSizeFrom:commandWords[0]];
            Pizza *pizza;
            
            if ([[commandWords[0] lowercaseString] hasPrefix:@"pepperoni"]) {
                pizza = [kitchen makeLargePepperoniPizza];
            }
            else{
                pizza = [kitchen makePizzaWithSize: pizzaSize toppings:pizzaToppings];
            }
            
            NSString *toppingString = [pizza.pizzaToppings componentsJoinedByString:@", " ];
            
            NSString *sizeString = [Kitchen sizeStringFromPizzaSize:pizza.pizzaSize];
            
            NSLog(@"You ordered a pizza of size %@, with toppings %@", sizeString, toppingString);
            // And then send some message to the kitchen...
            [deliveryService displayPizzaHistory];
            
        }

    }
    return 0;

}

