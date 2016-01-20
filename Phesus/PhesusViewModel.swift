//
//  PhesusModel.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-18.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit

class PhesusViewModel {
    
    var x:CGFloat = 0
    var y:CGFloat = 0
    var width:CGFloat = 0
    var height:CGFloat = 0
    
    required init(x:CGFloat, y:CGFloat, width:CGFloat, height:CGFloat) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }
    
    func getRect() -> CGRect {
        return CGRect(x:x, y:y, width:width, height:height)
    }
    
    func moveRect(x:CGFloat, y:CGFloat) {
        self.x = x - width/2
        self.y = y - height/2
    }
    
}