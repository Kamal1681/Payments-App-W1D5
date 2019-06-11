//
//  StripePaymentService.m
//  Payments
//
//  Created by Kamal Maged on 2019-06-11.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void) processPaymentAmount: (NSInteger) paymentAmount {
   NSLog(@"You are paying %li through Stripe", paymentAmount);
}
-(BOOL) canProcessPayment {
    if (arc4random_uniform(2) == 1) {
        return true;
    } else {
        return false;
    }
}
@end
