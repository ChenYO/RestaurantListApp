//
//  UINavigationController+Ext.swift
//  FoodPin
//
//  Created by 陳仲堯 on 2018/9/10.
//  Copyright © 2018年 AppCoda. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    //將子視圖改為頂層視圖
    open override var childViewControllerForStatusBarStyle: UIViewController? {
        return topViewController
    }
}
