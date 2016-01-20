//
//  NodeView.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-17.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation
import UIKit
class NodeView:PhesusView, UITextFieldDelegate {
    var node:Node
    var textBox:UITextField = UITextField()
    var fillColor:CGColorRef
    
    init (node:Node) {
        self.node = node
        self.fillColor = UIColor.blueColor().CGColor
        super.init(data: node)
        self.backgroundColor = UIColor.yellowColor()
        
        self.addSubview(textBox)
        
        self.addConstraint(NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: textBox, attribute: NSLayoutAttribute.Left, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: textBox, attribute: NSLayoutAttribute.Right, multiplier: 1, constant: 0))
        
        textBox.text = "Data"
        textBox.delegate = self
        textBox.sizeToFit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        let ctx = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(ctx, fillColor)
        CGContextFillRect(ctx, node.getRect())
    }
    
//MARK: Textfield delegate
    func textFieldDidEndEditing(textField: UITextField) {
        //send the changed data to the data service
        
    }

}