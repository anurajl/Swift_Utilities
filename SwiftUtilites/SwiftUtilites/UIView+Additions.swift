//
//  UIView+Additions.swift
//  SwiftUtilites
//
//  Created by anuraj on 10/31/17.
//  Copyright © 2017 QBurst. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    func addShadowToView() {
        
        
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowOpacity = 0.25
        layer.cornerRadius = 5
        layer.shadowRadius = 3
        clipsToBounds = false
    }
}
