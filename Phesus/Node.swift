//
//  Node.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-17.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit

class Node {
    
    //The center of the shape
    var x:CGFloat = 0
    var y:CGFloat = 0
    
    var width:CGFloat = 100
    var height:CGFloat = 100
    
    var type:NodeType
    
    init(x:CGFloat, y:CGFloat, type:NodeType) {
        self.x = x
        self.y = y
        self.type = type
    }
    
    func getRect () -> CGRect {
        return CGRect(x: x - width/2, y: y-height/2, width: width, height: height)
    }
    
}