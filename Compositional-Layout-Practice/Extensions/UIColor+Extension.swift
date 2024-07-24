//
//  UIColor+Extension.swift
//  Compositional-Layout-Practice
//
//  Created by Sagar Chandra Das on 24/7/24.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}
