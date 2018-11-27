//
//  EndpointsList.swift
//  SimpleRequestManagerDemo
//
//  Created by Guillermo Zafra on 27/11/2018.
//  Copyright © 2018 Guillermo Zafra. All rights reserved.
//

import Foundation
import SimpleRequestManager

enum Endpoints: String, EndpointProtocol {

    case getUserInfo = "/user"
    
    var baseUrl: String {
        return "https://api.baseUrl.com/v1/"
    }
}
