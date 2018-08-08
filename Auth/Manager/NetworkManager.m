//
//  NetworkManager.m
//  Auth
//
//  Created by Sam Street on 08/08/2018.
//  Copyright © 2018 SamStreet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkManager.h"

@interface NetworkManager () {
    BOOL networkConnectionEnabled;
}

@end

@implementation NetworkManager

-(BOOL)networkConnectionEnabled
{
    NSURL *scriptUrl = [NSURL URLWithString:@"http://www.google.com/m"];
    NSData *data = [NSData dataWithContentsOfURL:scriptUrl];
    if (data)
        return true;
    else
        return false;
}

@end
