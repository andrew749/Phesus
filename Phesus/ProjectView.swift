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
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
//// Main drawing
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        for view in childrenViews {
            view.drawRect(view.frame)
        }
    }
    
    override func addSubview(view: UIView) {
        super.addSubview(view)
        childrenViews.append(view)
        self.drawRect(self.frame)
    }
    

    
}