//
//  Connection.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-17.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit
class Connection {

    var fromNode:Node
    var toNode:Node
    
    var type:ConnectionType
    
    var width:CGFloat = 5
    
    init(fromNode:Node, toNode:Node, type:ConnectionType) {
        self.fromNode = fromNode
        self.toNode = toNode
        self.type = type
    }
    
    func getRect() -> CGRect {
        return CGRect(x: fromNode.x, y: fromNode.y, width: width, height:
            sqrt(pow(toNode.y - fromNode.y,2) +
                pow(toNode.x - fromNode.x,2)))
    }
    
    func getAngle() -> CGFloat {
        return 90
    }
}