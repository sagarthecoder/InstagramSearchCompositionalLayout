//
//  CGFloat+Extension.swift
//  Compositional-Layout-Practice
//
//  Created by Sagar Chandra Das on 24/7/24.
//
import Foundation

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
