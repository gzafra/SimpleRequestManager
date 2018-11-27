//
//  SimpleGetRequest.swift
//  SimpleRequestManagerDemo
//
//  Created by Guillermo Zafra on 27/11/2018.
//  Copyright © 2018 Guillermo Zafra. All rights reserved.
//

import Foundation
import SimpleRequestManager

struct SimpleGetRequest: RequestProtocol {
    
    typealias ResponseType = MyDecodableResponse
    
    var method: HTTPMethod = .get
    
    var url: URL? = Endpoints.getUserInfo.url
    
    var body: Data? = nil
    
    var completion: ((Result<MyDecodableResponse>) -> Void)?
    
    var queryString: [String : String]? = nil
}
