//
//  ToDoViewController.h
//  EveryDo
//
//  Created by Kamal Maged on 2019-01-23.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
NS_ASSUME_NONNULL_BEGIN
@protocol AddToDoTask <NSObject>

- (void) addNewRow: (ToDo *) todo;

@end
@interface ToDoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *toDoTitle;
@property (weak, nonatomic) IBOutlet UITextField *toDoDescription;
@property (weak, nonatomic) IBOutlet UITextField *toDoPriority;

@property (nonatomic) id<AddToDoTask> delegate;
@end

NS_ASSUME_NONNULL_END
