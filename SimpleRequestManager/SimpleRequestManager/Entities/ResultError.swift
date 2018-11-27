//
//  ResultError.swift
//  CryptoTracker
//
//  Created by Guillermo Zafra on 27/09/2018.
//  Copyright © 2018 Guillermo Zafra. All rights reserved.
//

import Foundation

public enum ResultError: Error {

    case serverError(code: HTTPCode)
    case unknownError
    case parsingError(message: String)
    case networkError(underlaying: Error)

}
