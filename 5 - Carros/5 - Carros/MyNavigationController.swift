//
//  MyNavigationControllerViewController.swift
//  5 - Carros
//
//  Created by André Guedes on 30/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

import UIKit

class MyNavigationController: UINavigationController {

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return self.topViewController!.supportedInterfaceOrientations()
    }
}
