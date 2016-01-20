//
//  Project.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-19.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation

class Project {
    
    var id:String
    var connections: [Connection]?
    var nodes: [Node]?
    
    init(id:String, connections:[Connection], nodes:[Node]?) {
        self.id = id
        self.connections = connections
        self.nodes = nodes
    }
    
    func addNode(node:Node) {
        if nodes == nil {
            nodes = []
        }
        nodes!.append(node)
    }
    
    func addConnection(connection:Connection) {
        if connections == nil {
            connections = []
        }
        connections!.append(connection)
    }
}