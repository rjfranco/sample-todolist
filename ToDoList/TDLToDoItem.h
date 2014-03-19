//
//  TDLToDoItem.h
//  ToDoList
//
//  Created by Ramiro Franco on 3/18/14.
//  Copyright (c) 2014 Ramiro Franco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TDLToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
