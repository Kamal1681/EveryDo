//
//  ToDo.m
//  EveryDo
//
//  Created by Kamal Maged on 2019-01-22.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo
- (instancetype)initWithTitle: (NSString *) title description: (NSString *) description priority: (NSUInteger) priority 
{
    self = [super init];
    if (self) {
        _title = title;
        _toDoDescription = description;
        _priority = priority;
        _isCompleted = NO;
    }
    return self;
}
@end
