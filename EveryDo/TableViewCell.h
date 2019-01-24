//
//  TableViewCell.h
//  EveryDo
//
//  Created by Kamal Maged on 2019-01-22.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
NS_ASSUME_NONNULL_BEGIN
@protocol RemoveToDoTask <NSObject>

- (void) removeCompletedRow: (ToDo *) todo;

@end
@interface TableViewCell : UITableViewCell

@property (nonatomic,strong) NSString* title;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (nonatomic,strong) NSString* toDoDescription;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (nonatomic) id<RemoveToDoTask> delegate;
@property (nonatomic) ToDo * task;
- (void)configureCell:(ToDo*)row;
@end

NS_ASSUME_NONNULL_END
