//
//  main.m
//  Payments
//
//  Created by Kamal Maged on 2019-06-11.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PayPalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputChars[255];
        long command;
        char *ptr;//dummy pointer for getting an integer value using strtol function
            
            int dollarValue = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%i Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", dollarValue);
            
            fgets(inputChars, 255, stdin);
            // NSString * inputString = [NSString stringWithUTF8String:inputChars];
            command = strtol(inputChars, &ptr, 10);
            NSLog(@"%li", command);
            PaymentGateway * paymentGateway = [[PaymentGateway alloc]init];
            
            PayPalPaymentService * paypalPayment = [[PayPalPaymentService alloc]init];
            StripePaymentService * stripePayment = [[StripePaymentService alloc]init];
            AmazonPaymentService * amazonPayment = [[AmazonPaymentService alloc]init];
            ApplePaymentService  * applePayment  = [[ApplePaymentService alloc]init];
            switch (command) {
                case 1:
                    paymentGateway.delegate = paypalPayment;
                    break;
                case 2:
                    paymentGateway.delegate = stripePayment;
                    break;
                case 3:
                    paymentGateway.delegate = amazonPayment;
                    break;
                case 4:
                    paymentGateway.delegate = applePayment;
                default:
                    break;
            }
            [paymentGateway processPaymentAmount:dollarValue];

    }
    return 0;
}
