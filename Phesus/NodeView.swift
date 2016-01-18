//
//  NodeView.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-17.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit
class NodeView:UIView {
    var node:Node
    
    var fillColor:CGColorRef
    
    init (node:Node) {
        self.node = node
        fillColor = UIColor.blueColor().CGColor
        super.init(frame: node.getRect())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        let ctx = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(ctx, fillColor)
        CGContextFillRect(ctx, node.getRect())
    }
}