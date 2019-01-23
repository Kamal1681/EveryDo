//
//  TableViewCell.m
//  EveryDo
//
//  Created by Kamal Maged on 2019-01-22.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureCell:(ToDo*)row {
    [self.titleLabel setText:row.title];
    [self.descriptionLabel setText:row.toDoDescription];
    self.task = row;
    UISwipeGestureRecognizer * toDoComplete = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeToComplete:)];
    [self addGestureRecognizer:toDoComplete];
    toDoComplete.direction = UISwipeGestureRecognizerDirectionRight;
    
}
- (void) swipeToComplete: (UISwipeGestureRecognizer *) sender {
    self.task.isCompleted = YES;
}


@end
