//
//  DetailViewController.m
//  EveryDo
//
//  Created by Kamal Maged on 2019-01-22.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = self.toDoObject.title;
    self.descriptionLabel.text = self.toDoObject.toDoDescription;
    self.priorityLabel.text = @(self.toDoObject.priority).stringValue;
    self.completeStatus.text = self.toDoObject.isCompleted ? @"Complete" : @"Not Done";
   
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
