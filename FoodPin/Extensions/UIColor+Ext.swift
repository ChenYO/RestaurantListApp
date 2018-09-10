//
//  UIColor_Et.swift
//  FoodPin
//
//  Created by 陳仲堯 on 2018/9/10.
//  Copyright © 2018年 AppCoda. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    //擴充UIColor功能，初始時可自動計算RPG值
    convenience init(red: Int, green: Int, blue: Int) {
        let redValue = CGFloat(red) / 255.0
        let greenValue = CGFloat(green) / 255.0
        let blueValue = CGFloat(blue) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
}
