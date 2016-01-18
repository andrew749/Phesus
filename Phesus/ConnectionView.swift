//
//  ConnectionView.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-17.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit

class ConnectionView: UIView {
    
    var connection:Connection
    var fillColor:CGColorRef
    
    init(connection:Connection) {
        self.connection = connection
        self.fillColor = UIColor.brownColor().CGColor
        super.init(frame: connection.getRect())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        let ctx = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(ctx, fillColor)
        CGContextRotateCTM(ctx, connection.getAngle())
        CGContextFillRect(ctx, connection.getRect())
    }
}