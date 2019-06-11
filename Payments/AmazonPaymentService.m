//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Kamal Maged on 2019-06-11.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
-(void) processPaymentAmount: (NSInteger) paymentAmount {
    NSLog(@"You are paying %li through Amazon", paymentAmount);
}
-(BOOL) canProcessPayment {
    if (arc4random_uniform(2) == 1) {
        return true;
    } else {
        return false;
    }
}
@end
