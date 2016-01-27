//
//  Constants.swift
//  Phesus
//
//  Created by Andrew Codispoti on 2016-01-19.
//  Copyright © 2016 ACDP. All rights reserved.
//

import Foundation

class Constants {
    static let serverUrl:String = "http://localhost:3000/"
    static let firstLaunch:String = "firstLaunch"
    static func getProjectByUser (userId:String) ->String {
        return serverUrl + ""
    }
    static func dataUrl() ->String {
        return serverUrl + "data"
    }
}