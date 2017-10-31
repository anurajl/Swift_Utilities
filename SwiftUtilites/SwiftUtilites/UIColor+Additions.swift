//
//  UIColor+Additions.swift
//  OTP_iOS
//
//  Created by anuraj on 7/7/17.
//  Copyright © 2017 QBurst. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    
    class func colorWithHex(hex:String) -> UIColor {
        
        var colorString = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        if colorString.hasPrefix("#"){
            colorString = colorString.substring(from: colorString.characters.index(colorString.startIndex, offsetBy: 1))
        }
        if (colorString.characters.count != 6) {
            return UIColor.gray
        }
        var rgbValue:UInt32 = 0
        Scanner(string: colorString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
    
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}


extension UIView{
    
     func addShadowToView() {

        
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowOpacity = 0.25
        layer.cornerRadius = 5
        layer.shadowRadius = 3
        clipsToBounds = false
    }
}
