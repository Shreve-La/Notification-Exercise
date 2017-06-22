//
//  FirstViewController.m
//  NotificationExercise
//
//  Created by swcl on 2017-06-21.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (nonatomic,strong)  NSNumber *stepperValue;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];

}


- (IBAction)stepperTapped:(UIStepper *)sender {
    NSLog(@"Called stepperTapped");
    self.stepperValue = [NSNumber numberWithDouble:([sender value])];
    NSLog(@"%@", self.stepperValue);
    NSDictionary *userInput = @{@"stepperValue": self.stepperValue};
    [[NSNotificationCenter defaultCenter] postNotificationName:@"stepperValueChanged" object:self userInfo: userInput];
}
                                                

                                                
                                                
                                                
                                                

@end
