//
//  ProjectView.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-17.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit

class ProjectView: UIView {
    
    let NODE_WIDTH:CGFloat = 100
    let NODE_HEIGHT:CGFloat = 100
    
    var childrenViews:[UIView] = []
    
    init(frame:CGRect, childrenViews:[UIView]) {
        self.childrenViews = childrenViews
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
// Main drawing
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        for view in childrenViews {
            view.drawRect(rect)
        }
        
    }
    
    func addChildView(view:UIView) {
        childrenViews.append(view)
        self.drawRect(self.frame)
    }
    func drawNode(x:CGFloat, y:CGFloat, shape:NodeType, context:CGContextRef) {
        CGContextSetFillColorWithColor(context, UIColor.blackColor().CGColor)
        if shape == NodeType.RECTANGLE {
            let rect:CGRect = CGRect(x: x, y: y, width: NODE_WIDTH, height: NODE_HEIGHT)
            CGContextFillRect(context , rect)
        } else if shape ==  NodeType.CIRCLE {
            
        }
    }
    
    func drawConnection() {
        
    }
}