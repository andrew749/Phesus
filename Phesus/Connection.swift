//
//  Connection.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-17.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit
class Connection:PhesusViewModel {

    var fromNode:Node
    var toNode:Node
    
    var type:ConnectionType
    
    
    init(fromNode:Node, toNode:Node, type:ConnectionType) {
        self.fromNode = fromNode
        self.toNode = toNode
        self.type = type
        super.init(x: fromNode.x, y:fromNode.y, width:5, height:sqrt(pow(toNode.y - fromNode.y,2) +
            pow(toNode.x - fromNode.x,2)))
    }

    required init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
        fatalError("init(x:y:width:height:) has not been implemented")
    }
    
    override func getRect() -> CGRect {
        return CGRect(x: fromNode.x, y: fromNode.y, width: width, height:
            sqrt(pow(toNode.y - fromNode.y,2) +
                pow(toNode.x - fromNode.x,2)))
    }
    
    func getX() -> CGFloat {
        return CGRectGetMidX(fromNode.getRect())
    }
    
    func getY() -> CGFloat {
        return CGRectGetMidY(fromNode.getRect())
    }
    
    func getToX() -> CGFloat {
        return CGRectGetMidX(toNode.getRect())
    }
    
    func getToY() -> CGFloat {
        return CGRectGetMidY(toNode.getRect())
    }
    
    func getAngle() -> CGFloat {
        return tan((toNode.y - fromNode.y)/(toNode.x-fromNode.x))
    }
    
}