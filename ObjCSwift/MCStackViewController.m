//
//  MCStackViewController.m
//  ObjCSwift
//
//  Created by Matthew Chupp on 3/22/15.
//  Copyright (c) 2015 MattChupp. All rights reserved.
//

#import "MCStackViewController.h"
#import "ObjCSwift-Swift.h"


@interface MCStackViewController ()

@property (weak, nonatomic) IBOutlet UILabel *stackItem;
@property (nonatomic) SwiftStack *stack;

@end

@implementation MCStackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self) {
        
        _stackItem.text = @"Stack";
        
        _stack = [[SwiftStack alloc] init];
    }
    
}

- (void)popTheStack {
    if ([self.stack isEmpty]) {
        _stackItem.text = @"Stack is empty";
        
    } else {
        _stackItem.text = [NSString stringWithFormat:@"%@", self.stack.top];
        NSLog(@"%@", self.stack.top);
        [self.stack pop];
        
    }
}

- (void)pushTheStack{
    
    [self.stack push: [NSString stringWithFormat: @"Item"]];
    
}

- (IBAction)popStack {
    
    [self popTheStack];
    
}


- (IBAction)pushStack {
    
    [self pushTheStack];
    
}

@end
