//
//  InStoreSession.h
//  Pinrose
//
//  Created by Joel Wasserman on 7/22/14.
//  Copyright (c) 2014 Joel Wasserman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InStoreSession : NSObject

+ (NSMutableDictionary *) sessionVariables;
+ (NSMutableDictionary *) sessionDictionary;
@end


