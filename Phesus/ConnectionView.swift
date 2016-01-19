//
//  ConnectionView.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-17.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit

class ConnectionView: PhesusView {
    
    var connection:Connection
    var fillColor:CGColorRef
    
    init(connection:Connection) {
        self.connection = connection
        self.fillColor = UIColor.redColor().CGColor
        super.init(data: connection, frame:CGRectZero)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func drawRect(rect: CGRect) {
        let ctx = UIGraphicsGetCurrentContext()
        CGContextSetStrokeColorWithColor(ctx, fillColor)
        CGContextMoveToPoint(ctx, connection.getX(), connection.getY())
        CGContextAddLineToPoint(ctx, connection.getToX(), connection.getToY())
        CGContextStrokePath(ctx)
    }
    
}