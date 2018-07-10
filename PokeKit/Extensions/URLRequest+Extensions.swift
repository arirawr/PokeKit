//
//  HTTPRequest+Extensions.swift
//  PokeKit
//
//  Created by Arielle Vaniderstine on 2018-07-10.
//  Copyright © 2018 Arielle Vaniderstine. All rights reserved.
//

import Foundation

extension URLRequest {

    public enum HTTPMethod: String {
        case get = "GET"
        case put = "PUT"
        case post = "POST"
        case delete = "DELETE"
        case head = "HEAD"
        case options = "OPTIONS"
        case trace = "TRACE"
        case connect = "CONNECT"
    }

}
