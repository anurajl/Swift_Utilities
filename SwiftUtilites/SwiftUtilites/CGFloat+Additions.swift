//
//  CGFloat+Additions.swift
//  SwiftUtilites
//
//  Created by anuraj on 10/31/17.
//  Copyright © 2017 QBurst. All rights reserved.
//

import Foundation
import UIKit

extension CGFloat {
    
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
