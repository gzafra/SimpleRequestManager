//
//  MyDecodableResponse.swift
//  SimpleRequestManagerDemo
//
//  Created by Guillermo Zafra on 27/11/2018.
//  Copyright © 2018 Guillermo Zafra. All rights reserved.
//

import Foundation

struct MyDecodableResponse: Decodable {
    let id: String
    let name: String
}
