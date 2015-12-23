//
//  MeuSegundoViewController.m
//  BemVindo
//
//  Created by André Guedes on 21/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import "MeuSegundoViewController.h"

@implementation MeuSegundoViewController
@synthesize msg;

#pragma mark - View lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    label.text = msg;
}

#pragma mark - eventos
- (void)voltar {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
