/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ChocolabsAdmobmediationAdView.h"
#import "TiApp.h"
#import "TiUtils.h"

@implementation ChocolabsAdmobmediationAdView


-(void)refreshAd:(CGRect)bounds
{
	NSLog(@"[INFO] Admob Mediation module loaded.");
    
    if((int)bounds.size.width == 300 && (int)bounds.size.height == 250){
        ad = [[GADBannerView alloc] initWithAdSize:kGADAdSizeMediumRectangle];
    }
    else if((int)bounds.size.width == 480 && (int)bounds.size.height == 60){
        ad = [[GADBannerView alloc] initWithAdSize:kGADAdSizeFullBanner];
    }
    else if((int)bounds.size.width == 728 && (int)bounds.size.height == 90){
        ad = [[GADBannerView alloc] initWithAdSize:kGADAdSizeLeaderboard];
    }
    else{
        ad = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
    }
    
    ad.adUnitID = [self.proxy valueForKey:@"publisherId"];
    
    //ad.adUnitID = @"d1b26e6960934b3f";
    
    ad.rootViewController = [[TiApp app] controller];
    
    GADRequest* request = [GADRequest request];
    
    
    [self addSubview:ad];
    ad.delegate = self;
    [ad loadRequest:request];
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    [self refreshAd:bounds];
}

-(void)dealloc
{
    if (ad != nil) {
        [ad removeFromSuperview];
        RELEASE_TO_NIL(ad);
    }
    [super dealloc];
}

@end
