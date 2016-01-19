//
//  ViewController.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-14.
//  Copyright © 2016 ACDP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: ProjectView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        let views = createViewObjects()

        
        for view in views {
            mainView.addSubview(view)
            view.userInteractionEnabled = true
            view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: "handleDrag:"))
        }
    }
    
    func createViewObjects() -> Set<PhesusView>{
        let tempNode = Node(x: 100, y: 100, type: NodeType.RECTANGLE)
        let tempNode2 = Node(x: 200, y: 200, type: NodeType.RECTANGLE)
        let tempNode3 = Node(x: 150, y: 300, type: NodeType.RECTANGLE)
        let connection = Connection(fromNode: tempNode,
            toNode: tempNode2,
            type: ConnectionType.UNI)
        let connection2 = Connection(fromNode: tempNode2, toNode: tempNode3, type: ConnectionType.UNI)
        let connection3 = Connection(fromNode: tempNode3, toNode: tempNode, type: ConnectionType.UNI)

        
        let tempView = NodeView(node: tempNode)
        let tempView2 = NodeView(node: tempNode2)
        let tempView3 = NodeView(node: tempNode3)
        let connectionView = ConnectionView(connection: connection)
        let connectionView2 = ConnectionView(connection: connection2)
        let connectionView3 = ConnectionView(connection: connection3)
        
        var tempViews = Set<PhesusView>()
        tempViews.insert(tempView)
        tempViews.insert(tempView2)
        tempViews.insert(tempView3)
        tempViews.insert(connectionView)
        tempViews.insert(connectionView2)
        tempViews.insert(connectionView3)
        
        return tempViews
    }

    func handleDrag(panGestureRecognizer:UIPanGestureRecognizer) {
        if let view = panGestureRecognizer.view as? PhesusView {
            view.moveObject(panGestureRecognizer.locationInView(mainView).x,
                newY: panGestureRecognizer.locationInView(mainView).y)
            self.mainView.setNeedsDisplay()
        }
    }
}

