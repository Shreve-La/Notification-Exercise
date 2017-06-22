//
//  SecondViewController.m
//  NotificationExercise
//
//  Created by swcl on 2017-06-21.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@end

@implementation SecondViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"View Did Load");
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateCountLabel:) name:@"stepperValueChanged" object:nil];
}

-(void)updateCountLabel:(NSNotification*)notification
{
    NSLog(@"Got Notification");
    self.countLabel.text =[notification.userInfo[@"stepperValue"] stringValue];
    ;}




@end
