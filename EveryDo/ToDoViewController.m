//
//  ToDoViewController.m
//  EveryDo
//
//  Created by Kamal Maged on 2019-01-23.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "ToDoViewController.h"

@interface ToDoViewController ()

@end

@implementation ToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Add ToDo task"]) {
        
        UIViewController* rootView = segue.destinationViewController;
        
        ToDo * todo = [[ToDo alloc]initWithTitle:self.toDoTitle.text description:self.toDoDescription.text priority:[self.toDoPriority.text integerValue]];
        todo.isCompleted = NO;
        
        [self.delegate addNewRow:todo];
       
        
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
