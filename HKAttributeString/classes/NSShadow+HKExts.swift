//
//  NSShadow+HKExts.swift
//  HKAttributeString
//
//  Created by heke on 16/8/10.
//  Copyright © 2016年 mhk. All rights reserved.
//

import Foundation
import UIKit

extension NSShadow {
    class func shadowWith(Offset: CGSize, BlurRadius: CGFloat, Color: UIColor) ->NSShadow {
        let shadow = NSShadow()
        shadow.shadowOffset = Offset
        shadow.shadowBlurRadius = BlurRadius
        shadow.shadowColor = Color
        
        return shadow
    }
}