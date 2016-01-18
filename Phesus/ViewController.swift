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
    @IBOutlet weak var mainView: ProjectView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tempNode = Node(x: 100, y: 100, type: NodeType.RECTANGLE)
        tempNodes.append(tempNode)
        
        let tempView = NodeView(node: tempNode)
        tempViews.append(tempView)
        mainView.addChildView(tempView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

