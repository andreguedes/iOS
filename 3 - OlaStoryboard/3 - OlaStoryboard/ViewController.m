//
//  ViewController.m
//  3 - OlaStoryboard
//
//  Created by André Guedes on 28/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)fechar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
