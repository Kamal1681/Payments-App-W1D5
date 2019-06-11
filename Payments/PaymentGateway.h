//
//  PaymentGateway.h
//  Payments
//
//  Created by Kamal Maged on 2019-06-11.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PaymentDelegate <NSObject>
-(void) processPaymentAmount: (NSInteger) paymentAmount;
-(BOOL) canProcessPayment;
@end

@interface PaymentGateway : NSObject
-(void) processPaymentAmount: (NSInteger) paymentAmount;
@property (nonatomic, weak) id <PaymentDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
