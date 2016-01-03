//
//  MyTabBarControllerViewController.swift
//  5 - Carros
//
//  Created by André Guedes on 30/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return self.selectedViewController!.supportedInterfaceOrientations()
    }

}
