//
//  Node.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-17.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit

class Node:PhesusViewModel {
    
    var type:NodeType
    
    init(x:CGFloat, y:CGFloat, type:NodeType) {
        self.type = type
        super.init(x: x, y:y, width:100, height:100)
    }

    required init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
        fatalError("init(x:y:width:height:) has not been implemented")
    }
    
    override func getRect () -> CGRect {
        return CGRect(x: x - width/2, y: y-height/2, width: width, height: height)
    }
    
}