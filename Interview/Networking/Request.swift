//
//  Requests.swift
//  Interview
//
//  Created by Fandom on 28/10/2020.
//

import Foundation

public enum HTTPMethod: String {
    case get
    case post
    case put
    case delete
    case head
}
/// Types adopting the `URLRequestConvertible` protocol can be used to safely construct `URLRequest`s.
public protocol URLRequestConvertible {
    func asURLRequest() -> URLRequest
}

extension URLRequest {
    init(_ request: Request) {
        self = request.asURLRequest()
    }
}

enum Request: URLRequestConvertible {
    case characterSheet
    
    private var method: HTTPMethod {
        switch self {
        case .characterSheet:
            return .get
        }
    }
    
    private var url: URL {
        switch self {
        case .characterSheet:
            return URL(string: "https://gist.githubusercontent.com/nahive/18ccaa1112ca4c1556fe36cf73dd229f/raw/783ee2947ee8ad23a3eab06856b92c2480b6e449/recruitmentJSON.json")!
        }
    }
    
    public func asURLRequest() -> URLRequest {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        return urlRequest
    }
}

