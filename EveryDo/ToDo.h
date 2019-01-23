//
//  ToDo.h
//  EveryDo
//
//  Created by Kamal Maged on 2019-01-22.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDo : NSObject

@property (nonatomic) NSString * toDoDescription;
@property (nonatomic) NSString * title;
@property (nonatomic) NSUInteger priority;
@property (nonatomic) BOOL isCompleted;

- (instancetype)initWithTitle: (NSString *) title description: (NSString *) description priority: (NSUInteger) priority;
@end

NS_ASSUME_NONNULL_END
