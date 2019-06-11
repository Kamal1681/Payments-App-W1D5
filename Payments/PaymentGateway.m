//
//  PaymentGateway.m
//  Payments
//
//  Created by Kamal Maged on 2019-06-11.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
-(void) processPaymentAmount: (NSInteger) paymentAmount {
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmount:paymentAmount];
    } else {
        NSLog(@"Cannot process your payment");
    }
    
}

@end
