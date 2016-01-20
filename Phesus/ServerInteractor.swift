//
//  ServerData.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-18.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation

class ServerData {
    
    
    static let sharedInstance = ServerData()
    
    init() {
        
    }
    
    func getProjectForUser(userId:String, completion: (Project) -> Void) {
        let getProject
        NSURLConnection.sendAsynchronousRequest(<#T##request: NSURLRequest##NSURLRequest#>, queue: <#T##NSOperationQueue#>, completionHandler: <#T##(NSURLResponse?, NSData?, NSError?) -> Void#>)
    }
    
}