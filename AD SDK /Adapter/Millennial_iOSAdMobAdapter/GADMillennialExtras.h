//
//  GADMillennialExtras.h
//  MillennialAdapter
//
//  Created by Mike Patzer on 1/31/13.
//  Copyright (c) 2013 Millennial Media Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GADAdMobExtras.h"

#import "MMRequest.h"

@interface GADMillennialExtras : GADAdMobExtras

/*  Create an MMRequest object for passing user metadata with an ad request in order to display more targeted and relevant ads. Assign that object to the request variable. You may only use information that is accurate, and that you have permission to share.
 */
@property (nonatomic, retain) MMRequest *request;

@end
