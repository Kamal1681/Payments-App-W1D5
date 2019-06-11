//
//  ApplePaymentService.m
//  Payments
//
//  Created by Kamal Maged on 2019-06-11.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void) processPaymentAmount: (NSInteger) paymentAmount {
    NSLog(@"You are paying % li through Apple", paymentAmount );
}
-(BOOL) canProcessPayment {
    if (arc4random_uniform(2) == 1) {
        return true;
    } else {
        return false;
    }
}
@end
