//
//  DemoInteractor.swift
//  SimpleRequestManagerDemo
//
//  Created by Guillermo Zafra on 27/11/2018.
//  Copyright © 2018 Guillermo Zafra. All rights reserved.
//

import Foundation
import SimpleRequestManager

class DemoInteractor {
    typealias GetUserCompletion = (MyDecodableResponse)->()
    let requestManager: RequestManager
    
    init(requestManager: RequestManager) {
        self.requestManager = requestManager
    }
    
    func getUser(completion: @escaping GetUserCompletion) {
        var getUserRequest = SimpleGetRequest()
        getUserRequest.completion = { result in
            switch result {
            case .success(let response):
                completion(response)
            case .failure(let error):
                print(error.localizedDescription)
                // Handle errr cases
            }
        }
        requestManager.send(request: getUserRequest)
    }
}
