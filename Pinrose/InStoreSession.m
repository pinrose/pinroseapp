//
//  InStoreSession.m
//  Pinrose
//
//  Created by Joel Wasserman on 7/22/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import "InStoreSession.h"

@implementation InStoreSession

static NSMutableDictionary *_session;

+ (NSMutableDictionary *) sessionVariables {
    if (!_session) {
        _session = [[NSMutableDictionary alloc] init];
    }
    
    return _session;
    
}
@end
