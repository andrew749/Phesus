//
//  PhesusView.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-18.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit
class PhesusView: UIView {
    
    var data:PhesusViewModel
    
    init(data:PhesusViewModel) {
        self.data = data
        super.init(frame: data.getRect())
    }
    init(data:PhesusViewModel, frame:CGRect) {
        self.data = data
        super.init(frame: CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: frame.size.height))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func moveObject(newX:CGFloat, newY:CGFloat) {
        data.moveRect(newX, y: newY)
        self.frame = data.getRect()
    }
}