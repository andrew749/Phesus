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

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func moveObject(newX:CGFloat, newY:CGFloat) {
        data.x = newX
        data.y = newY
        self.frame = data.getRect()
        self.drawRect(self.frame)
    }
}