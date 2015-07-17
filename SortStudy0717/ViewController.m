//
//  ViewController.m
//  SortStudy0717
//
//  Created by zy on 15/7/17.
//  Copyright (c) 2015年 zy. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //普通数组排序
    [self normalSort];
    
    //年龄排序
    [self personSort];
}

/// 普通的数组排序

- (void)normalSort{
    
    NSArray * arr = @[@13,@432,@12];
    NSSortDescriptor * sortDescrtptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray * resultArray = [arr sortedArrayUsingDescriptors:@[sortDescrtptor]];
    NSLog(@"result:%@",resultArray);
    
}

//Person类排序
- (void)personSort {
    
    Person * p1 = [[Person alloc] init];
    p1.name = @"zhangsan";
    p1.age = [NSNumber numberWithInt:23];
    
    Person * p2 = [[Person alloc] init];
    p2.name = @"lisi";
    p2.age = [NSNumber numberWithInt:19];
    
    Person * p3 = [[Person alloc] init];
    p3.name = @"wangwu";
    p3.age = [NSNumber numberWithInt:50];
    
    NSArray * peopleArray = @[p1,p2,p3];
    
    NSSortDescriptor * sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES];
    
    NSArray * resultArray = [peopleArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    for (int i = 0; i < resultArray.count; i++) {
        Person * p = (Person *)resultArray[i];
        NSLog(@"name:%@",p.name);
    }
    NSLog(@"peopleSort:%@",resultArray);
    
}


@end
