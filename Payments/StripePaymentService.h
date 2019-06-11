//
//  StripePaymentService.h
//  Payments
//
//  Created by Kamal Maged on 2019-06-11.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
NS_ASSUME_NONNULL_BEGIN

@interface StripePaymentService : NSObject <PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
