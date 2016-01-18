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
    var tempViews:[UIView] = []
    var tempConnections:[Connection] = []
    
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
        tempViews.append(tempView)
        tempViews.append(tempView2)
        
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


}

