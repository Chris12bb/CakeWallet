//
//  UITabBarController+viewControllersInit.swift
//  Wallet
//
//  Created by Cake Technologies 12/1/17.
//  Copyright © 2017 Cake Technologies. All rights reserved.
//

import UIKit

extension UITabBarController {
    convenience init(viewControllers: [UIViewController]) {
        self.init()
        self.setViewControllers(viewControllers, animated: false)
    }
}
