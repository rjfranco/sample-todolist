//
//  TDLAddToDoItemViewController.m
//  ToDoList
//
//  Created by Ramiro Franco on 3/17/14.
//  Copyright (c) 2014 Ramiro Franco. All rights reserved.
//

#import "TDLAddToDoItemViewController.h"

@interface TDLAddToDoItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation TDLAddToDoItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Just go back if cancel
    if (sender != self.doneButton) return;
    
    // Save new item if not
    if (self.textField.text.length > 0) {
        self.toDoItem = [[TDLToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
