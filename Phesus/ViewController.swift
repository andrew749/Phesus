//
//  ViewController.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-14.
//  Copyright © 2016 ACDP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tempNodes:[Node] = []
    var tempViews:Set<UIView> = []
    var tempConnections:[Connection] = []
    var trackingViews:Set<UIView> = []
    @IBOutlet weak var mainView: ProjectView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tempNode = Node(x: 100, y: 100, type: NodeType.RECTANGLE)
        let tempNode2 = Node(x: 300, y: 200, type: NodeType.RECTANGLE)
        tempNodes.append(tempNode)
        tempNodes.append(tempNode2)
        
        let tempView = NodeView(node: tempNode)
        let tempView2 = NodeView(node: tempNode2)
        tempViews.insert(tempView)
        tempViews.insert(tempView2)
        
        mainView.addChildView(tempView)
        mainView.addChildView(tempView2)
        
        let connection = Connection(fromNode: tempNode, toNode: tempNode2, type: ConnectionType.UNI)
        tempConnections.append(connection)
        let connectionView = ConnectionView(connection: connection)
        mainView.addChildView(connectionView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            if let view = touch.view {
                    trackingViews.insert(view)
            }
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            if let view = touch.view {
                if trackingViews.contains(view)  {
                    view.touchesMoved(touches, withEvent: event)
                }
            }
        }
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch  in touches {
            if let view = touch.view{
                if (trackingViews.contains(view)) {
                    trackingViews.remove(view)
                }
            }
        }
    }
}

