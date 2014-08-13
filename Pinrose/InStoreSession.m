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
static NSMutableDictionary *_sessions;
static NSMutableDictionary *_firstResult;
static NSMutableDictionary *_secondResult;

+ (NSMutableDictionary *) sessionVariables {
    if (!_session) {
        _session = [[NSMutableDictionary alloc] init];
    }
    
    return _session;
    
}

+ (NSMutableDictionary *) sessionDictionary {
    if (!_sessions) {
        _sessions = [[NSMutableDictionary alloc] init];
    }
    
    return _sessions;
    
}

+ (NSMutableDictionary *) firstResults {
    if (!_firstResult) {
        _firstResult = [[NSMutableDictionary alloc] init];
        
    }
    
    return _firstResult;
}


+ (NSMutableDictionary *) secondResults {
    if (!_secondResult) {
        _secondResult = [[NSMutableDictionary alloc] init];
        
    }
    
    return _secondResult;
}
@end
