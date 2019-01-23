//
//  ViewController.m
//  EveryDo
//
//  Created by Kamal Maged on 2019-01-22.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "ViewController.h"
#import "ToDo.h"
#import "TableViewCell.h"
#import "DetailViewController.h"
#import "ToDoViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, AddToDoTask>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) NSMutableArray <ToDo *> * myList;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ToDo * firstTask = [[ToDo alloc]initWithTitle:@"First Task" description:@"Shower" priority:1];
    ToDo * secondTask = [[ToDo alloc]initWithTitle:@"Second Task" description:@"Shopping for House supplies" priority:2];
    ToDo * thirdTask = [[ToDo alloc]initWithTitle:@"Third Task" description:@"Car maintenance" priority:3];
    ToDo * fourthTask = [[ToDo alloc]initWithTitle:@"Fourth Task" description:@"Play Video Games" priority:4];
    NSArray * dataTemp = @[firstTask, secondTask, thirdTask, fourthTask];
    self.myList = [NSMutableArray arrayWithCapacity:self.myList.count];
    for (ToDo * tD in dataTemp) {
        [self.myList addObject:tD];
    }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showDetail"]) {
        
        DetailViewController* detailView = segue.destinationViewController;
        NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
        ToDo * todo = self.myList[indexPath.row];
        detailView.toDoObject = todo;
    }
    if ([segue.identifier isEqualToString:@"Add ToDo Task"]) {
        ToDoViewController * toDoNew = segue.destinationViewController;
        toDoNew.delegate = self;
    }
}
-(void) addNewRow: (ToDo *) todo {
    //[[self.myList mutableCopy]addObject:todo];
    [self.myList addObject:todo];
    NSLog(@"%@", self.myList[4].title);
    [UITableView load];
    [self.tableView reloadData];
}
#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.myList count];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"task"];
    ToDo * task = self.myList[indexPath.row];
    [cell configureCell:task];
    return cell;
}


@end
